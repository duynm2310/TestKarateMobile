Feature: Verify Product Detail screen

  Background: Android preset
    * configure driver = driverConfig
    * driver { webDriverSession: "#(deviceCaps)" }

  @eCart_TC_04
  Scenario: [Android] Verify Product Detail screen
    # Go to homepage
    * call read("classpath:app/pages/HomescreenAndroid.feature@GotoHomePage")
    # Choose Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL")
    # Scroll to Coffee
    * call read("classpath:app/pages/HomepageAndroid.feature@ScrollToCoffee")
    # Go to Coffee page
    * call read("classpath:app/pages/HomepageAndroid.feature@GoToCoffeePage")
    # Go to product "High Octane Instant Coffee…" detail
    * call read("classpath:app/pages/CoffeescreenAndroid.feature@GoToHOICP")
    # Verify elements in product "High Octane Instant Coffee…" detail
    * call read("classpath:app/pages/CoffeescreenAndroid.feature@VerifyHOICP")