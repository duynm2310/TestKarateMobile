function fn() {
  var config = {}
  var android = {}
  android["desiredConfig"] = {
//   "app" : "D:\\Karate\\Test\\app\\eCart Multivendor Customer_5.0.1_APKPure.apk",
   "newCommandTimeout" : 300,
   "platformVersion" : "15.0",
   "platformName" : "Android",
   "connectHardwareKeyboard" : true,
   "deviceName" : "emulator-5554",
   "avd" : "Medium",
   "automationName" : "UiAutomator2",
   "appPackage": "wrteam.multivendor.customer",
   "appActivity": "wrteam.multivendor.customer.activity.SplashActivity"
  }
  config["android"] = android

  karate.configure("driver", {
    type: 'android',
    webDriverPath : "/wd/hub",
    start: false,
    httpConfig : { readTimeout: 120000 }
  })

  return config;
}