Feature: Home Screen

  Background: Setup feature
    * def locators = read("classpath:app/locators/homescreen-android.json")
    * def homescreen = locators.homescreen

  @VerifyHomescreen
  Scenario: Verify element Homescreen
    * match exists(homescreen.btnSkip) == true
    * match exists(homescreen.btnNext) == true
    * match text(homescreen.textData) == "Look for things around you"
    * screenshot()

  @GotoHomePage
  Scenario: Go to Homepage
    * waitFor(homescreen.btnSkip)
    * click(homescreen.btnNext)
    * click(homescreen.btnNext)
    * click(homescreen.btnNext)