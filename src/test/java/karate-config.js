function fn() {
  var config = {
    driverConfig: {
      type: 'android',
      webDriverPath : "/wd/hub",
      start: false,
      httpConfig : { readTimeout: 120000 }
    },
    urlAppiumServer: 'http://localhost:4723/wd/hub'
  }
  var deviceCaps = {
   //   "app" : "D:\\Karate\\Test\\app\\eCart Multivendor Customer_5.0.1_APKPure.apk",
      "desiredCapabilities": {
         "newCommandTimeout" : 300,
         "platformVersion" : "15",
         "platformName" : "Android",
         "connectHardwareKeyboard" : true,
         "deviceName" : "emulator-5554",
         "avd" : "Medium",
         "automationName" : "UiAutomator2",
         "appPackage": "wrteam.multivendor.customer",
         "appActivity": "wrteam.multivendor.customer.activity.SplashActivity"
         }
     }

  config["deviceCaps"] = deviceCaps

  return config;
}