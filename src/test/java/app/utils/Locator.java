package app.utils;

import com.intuit.karate.driver.Element;
import com.intuit.karate.driver.appium.AndroidDriver;
import com.intuit.karate.junit5.Karate;

import java.util.ArrayList;
import java.util.List;

public class Locator {
    public static String getElement(AndroidDriver driver, String xpath) {
        List<String> text = new ArrayList<>();
        for (Element e : driver.locateAll(xpath)){
            text.add(e.getText());
        }
        return text.toString();
    }
}
