Feature: Verify Profile screen

  Background: Android preset
    * driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }

  @eCart_TC_07
  Scenario: [Android] Verify Profile screen
    # Go to homepage
    * call read("classpath:app/pages/HomescreenAndroid.feature@GotoHomePage")
    # Choose Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL")
    # Go to Profile screen
    * call read("classpath:app/pages/HomepageAndroid.feature@GoToProfileScreen")
    # Go to Login screen
    * call read("classpath:app/pages/ProfilescreenAndroid.feature@GoToLoginScreen")
    # Verify elements in Login screen
    * call read("classpath:app/pages/ProfilescreenAndroid.feature@VerifyLoginscreen")
    # Login
    * call read("classpath:app/pages/ProfilescreenAndroid.feature@Login")
#    # Choose Default Delivery Location
#    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL")
    # Go to Profile screen
    * call read("classpath:app/pages/HomepageAndroid.feature@GoToProfileScreen")
    # Verify elements in Profile screen
    * call read("classpath:app/pages/ProfilescreenAndroid.feature@VerifyProfilescreen")