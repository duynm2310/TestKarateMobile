Feature: Verify Payment screen

  Background: Android preset
    * configure driver = driverConfig
    * driver { webDriverSession: "#(deviceCaps)" }

  @eCart_TC_06
  Scenario: [Android] Verify Payment screen
    # Go to homepage
    * call read("classpath:app/pages/HomescreenAndroid.feature@GotoHomePage")
    # Choose Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL")
    # Go to Category screen
    * call read("classpath:app/pages/HomepageAndroid.feature@GoToCategoryScreen")
    # Go to Beverages
    * call read("classpath:app/pages/CategoryscreenAndroid.feature@GoToBeverages")
    # Click “Add to Cart” with Quantity = 2 of “Sunfeast Dark Fantasy Choco Fills, 600g” product
    * call read("classpath:app/pages/CategoryscreenAndroid.feature@AddToCartSunfeast")
    # Go to Cart
    * call read("classpath:app/pages/CategoryscreenAndroid.feature@GoToCart")
    # Choose Default Delivery Location
    * call read("classpath:app/pages/HomepageAndroid.feature@ChooseDDL-370001")
    # Click continue
    * call read("classpath:app/pages/CartscreenAndroid.feature@ClickContinue")
    # Login
    * call read("classpath:app/pages/ProfilescreenAndroid.feature@Login")
    # Click continue
    * call read("classpath:app/pages/CartscreenAndroid.feature@ClickContinue")
    # Click continue
    * call read("classpath:app/pages/CartscreenAndroid.feature@ClickContinue")
    # Verify payment screen
    * call read("classpath:app/pages/PaymentscreenAndroid.feature@VerifyPayment")