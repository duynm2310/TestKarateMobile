Feature: Verify Category screen

  Background: Android preset
    * configure driver = driverConfig
    * driver { webDriverSession: "#(deviceCaps)" }

  @eCart_TC_02
  Scenario: [Android] Verify Category screen
    # Go to homepage
    * call read("classpath:app/pages/HomescreenAndroid.feature@GotoHomePage")
    # Verify elements in Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@VerifyDDL")
    # Choose Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL")
    # Go to Category screen
    * call read("classpath:app/pages/HomepageAndroid.feature@GoToCategoryScreen")
    # Verify elements in Category screen
    * call read("classpath:app/pages/CategoryscreenAndroid.feature@VerifyCategoryscreen")