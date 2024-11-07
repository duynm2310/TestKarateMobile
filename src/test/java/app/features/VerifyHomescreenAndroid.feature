Feature: Verify Home screen

  Background: Android preset
    * configure driver = driverConfig
    * driver { webDriverSession: "#(deviceCaps)"}

  @eCart_TC_01
  Scenario: [Android] Verify Home screen
    # Verify elements in home screen
    * call read("classpath:app/pages/HomescreenAndroid.feature@VerifyHomescreen")
    # Capture evidence
    * screenshot()