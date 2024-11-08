Feature: Get elements

  Background:
    * configure retry = { count: 0, interval: 0 }

  @GetTextElements
  Scenario: Get text elements
    * def listElements = call read("classpath:app/commons/GetElements.feature@GetElementsByXpath") {_xpath: "#(xpath)"}
    * def getText =
    """
      function(e){
        var list = []
        e.forEach((x) => {
          var textString = karate.call("classpath:app/commons/GetElements.feature@GetTextElement", {_elementId: x});
          list.push(textString.response.value.trim());
        })
        return list
      }
    """
    * def textElements = getText(listElements.response)
    * karate.set("response", textElements)

  @GetTextElement
  Scenario: Get text element
    * def sessionId = driver.sessionId
    * def path = '/session/' + sessionId + "/element/" + _elementId + "/text"
    Given url urlAppiumServer + path
    When method GET

  @GetElementsByXpath
  Scenario: Get elements
    * def sessionId = driver.sessionId
    * def path = '/session/' + sessionId + '/elements'
    Given url urlAppiumServer + path
    * def bodyRequest = {using: "", value: ""}
    * set bodyRequest.using = "xpath"
    * set bodyRequest.value = _xpath
    * request bodyRequest
    When method POST
    * karate.set("response", response.value.map(x => x.ELEMENT))

  @GetElementByXpath
  Scenario: Get element
    * def sessionId = driver.sessionId
    * def path = '/session/' + sessionId + '/element'
    Given url urlAppiumServer + path
    * def bodyRequest = {using: "", value: ""}
    * set bodyRequest.using = "xpath"
    * set bodyRequest.value = _xpath
    * request bodyRequest
    When method POST
    * karate.set("response", response.value.ELEMENT)

  @GetElementsScrollByXpath
  Scenario: Get elements scroll by xpath
    * def getElements =
    """
      function(xpath) {
        var list = []
        var xpathLast = xpath + "[last()]"
        var itemLast = karate.call("classpath:app/commons/GetElements.feature@GetElementByXpath", {_xpath: xpathLast});
        var itemList = karate.call("classpath:app/commons/GetElements.feature@GetElementsByXpath", {_xpath: xpath});
        itemList.response.forEach((x) => {if (!list.includes(x)) list.push(x)})
          do {
            // Scroll
            karate.call("classpath:app/commons/ScrollByLocator.feature@Scroll", {'startX': "500", "startY": "1000", "endX": "500", "endY": "200"});
            // Get Item
            var itemList = karate.call("classpath:app/commons/GetElements.feature@GetElementsByXpath", {_xpath: xpath});
            // Add Item
            itemList.response.forEach((x) => {if (!list.includes(x)) list.push(x)})
            // Get Item last
            var tmp = karate.call("classpath:app/commons/GetElements.feature@GetElementByXpath", {_xpath: xpathLast});
            // Check is last
            if (itemLast.response == tmp.response) break
            // Update last
            itemLast = tmp
          } while(true)
        return list
      }
    """
    * def list = getElements(xpath)
    * karate.set("response", list)

