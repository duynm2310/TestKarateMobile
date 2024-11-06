Feature: Verify number of product of Fresh Vegetables

  Background: Android preset
    * configure driver = driverConfig
    * driver { webDriverSession: "#(deviceCaps)" }

  @eCart_TC_03
  Scenario: [Android] Verify number of product of Fresh Vegetables
    # Go to homepage
    * call read("classpath:app/pages/HomescreenAndroid.feature@GotoHomePage")
    # Choose Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL")
    # Scroll to Fresh Vegetables
    * call read("classpath:app/pages/HomepageAndroid.feature@ScrollToFreshVegetable")
    # Verify 3 element in Vegetable part in homepage
    * call read("classpath:app/pages/HomepageAndroid.feature@VerifyFreshVegetableHome")
    # Go to Fresh Vegetable page
    * call read("classpath:app/pages/HomepageAndroid.feature@GoToFreshVegetablePage")
    # Verify 10 element in Fresh Vegetable page
    * call read("classpath:app/pages/HomepageAndroid.feature@VerifyFreshVegetablePage")