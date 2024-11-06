Feature: Verify Home screen

  Background: Android preset
    * configure driver = driverConfig
    * driver { webDriverSession: "#(deviceCaps)"}
#    * def AppiumDriver = Java.type("app.utils.DriverAppium")
#    * def driver = AppiumDriver.getDriver()

  @eCart_TC_01
  Scenario: [Android] Verify Home screen
    # Verify elements in home screen
    * call read("classpath:app/pages/HomescreenAndroid.feature@VerifyHomescreen")
    # Capture evidence
    * screenshot()