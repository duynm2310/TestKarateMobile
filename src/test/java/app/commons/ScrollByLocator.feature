Feature: Scroll by locator

  Background:
    * configure retry = { count: 0, interval: 0 }

  @ScrollByLocator
  Scenario: Scroll by locator
    * print _count
    * eval
    """
      var i = 0
      while(!(exists(_locator) || i > _count))
      {
        karate.call("classpath:app/commons/ScrollByLocator.feature@Scroll", {'startX': "500", "startY": "1000", "endX": "500", "endY": "200"});
        i++;
      }
    """

  @Scroll
  Scenario: Scroll
    * def sessionId = driver.sessionId
    * def path = '/session/' + sessionId + '/actions'
    Given url urlAppiumServer + path
    * def bodyRequest = read("classpath:app/datas/actions/actionScrollBody.json")
    * set bodyRequest.actions[0].actions[0] = {"type": "pause", "duration": 0}
    * set bodyRequest.actions[0].actions[1] = {"type": "pointerMove", "duration": 0, "x": "#(startX)", "y": "#(startY)", "origin": "viewport"}
    * set bodyRequest.actions[0].actions[2] = {"type": "pointerDown", "button": 0}
    * set bodyRequest.actions[0].actions[3] = {"type": "pause", "duration": 250}
    * set bodyRequest.actions[0].actions[4] = {"type": "pointerMove", "duration": 500, "x": "#(endX)", "y": "#(endY)", "origin": "viewport"}
    * set bodyRequest.actions[0].actions[5] = {"type": "pause", "duration": 500}
    * set bodyRequest.actions[0].actions[6] = {"type": "pointerUp", "button": 0}
    * request bodyRequest
    When method POST