package app.features;

import com.intuit.karate.junit5.Karate;

class AndroidTest {

    @Karate.Test
    public Karate testHomeScreen() {
        return Karate.run("classpath:app/features/VerifyHomeScreenAndroid.feature");
    }

    @Karate.Test
    public Karate testCategoryScreen() {
        return Karate.run("classpath:app/features/VerifyCategoryScreenAndroid.feature");
    }

    @Karate.Test
    public Karate testNumOfFV() {
        return Karate.run("classpath:app/features/VerifyNumOfProFV.feature");
    }

    @Karate.Test
    public Karate testCartscreen() {
        return Karate.run("classpath:app/features/VerifyCartscreen.feature");
    }

    @Karate.Test
    public Karate testProfilescreen() {
        return Karate.run("classpath:app/features/VerifyProfilescreenAndroid.feature");
    }

}
