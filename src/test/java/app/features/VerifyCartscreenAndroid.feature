Feature: Verify Cart screen

  Background: Android preset
    * configure driver = driverConfig
    * driver { webDriverSession: "#(deviceCaps)" }

  @eCart_TC_05
  Scenario: [Android] Verify Cart screen
    # Go to homepage
    * call read("classpath:app/pages/HomescreenAndroid.feature@GotoHomePage")
    # Choose Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL")
    # Go to Category screen
    * call read("classpath:app/pages/HomepageAndroid.feature@GoToCategoryScreen")
    # Go to Fast food
    * call read("classpath:app/pages/CategoryscreenAndroid.feature@GoToFastFood")
    # Click “Add to Cart” with Quantity = 2 of “Kurkure Namkeen - Masala Munch,” product
    * call read("classpath:app/pages/CategoryscreenAndroid.feature@AddToCartKukureNamKeen")
    # Go to Cart
    * call read("classpath:app/pages/CategoryscreenAndroid.feature@GoToCart")
    # Choose Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL-370405")
    # Verify elements in cart
    * call read("classpath:app/pages/CartscreenAndroid.feature@VerifyCart")

