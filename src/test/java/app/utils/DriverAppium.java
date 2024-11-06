package app.utils;


import io.appium.java_client.android.AndroidDriver;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.net.MalformedURLException;
import java.net.URL;

public class DriverAppium {
//    public static void main(String[] args) {
//        AndroidDriver driver = getDriver();
//    }
    private static AndroidDriver driver;

    public static AndroidDriver getDriver() {
        if (driver == null) {
            try {
                DesiredCapabilities capabilities = getDesiredCapabilities();
                driver = new AndroidDriver(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }
        return driver;
    }

    private static DesiredCapabilities getDesiredCapabilities() {
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability("platformName", "Android");
        capabilities.setCapability("appium:platformVersion", "15.0");
        capabilities.setCapability("appium:udid", "emulator-5554");
        capabilities.setCapability("appium:deviceName", "Medium");
        capabilities.setCapability("appium:appPackage","wrteam.multivendor.customer");
        capabilities.setCapability("appium:appActivity","wrteam.multivendor.customer.activity.SplashActivity");
        capabilities.setCapability("appium:automationName", "UiAutomator2");
        return  capabilities;
    }

    public static void quitDriver() {
        if (driver != null) {
            driver.quit();
            driver = null;
        }
    }
}