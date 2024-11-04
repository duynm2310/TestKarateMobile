Feature: Verify number of product of Fresh Vegetables

  Background: Android preset
    * driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }

  @eCart_TC_03
  Scenario: [Android] Verify number of product of Fresh Vegetables
    # Go to homepage
    * call read("classpath:app/pages/HomescreenAndroid.feature@GotoHomePage")
    # Choose Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL")
    # Scroll to Fresh Vegetables
    * call read("classpath:app/pages/HomepageAndroid.feature@ScrollToFreshVegetable")