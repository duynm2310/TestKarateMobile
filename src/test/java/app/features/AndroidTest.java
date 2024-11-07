package app.features;

import com.intuit.karate.junit5.Karate;

class AndroidTest {

    @Karate.Test
    public Karate testHomeScreen() {
        return Karate.run("classpath:app/features/VerifyHomescreenAndroid.feature");
    }

    @Karate.Test
    public Karate testCategoryScreen() {
        return Karate.run("classpath:app/features/VerifyCategoryscreenAndroid.feature");
    }

    @Karate.Test
    public Karate testNumOfFV() {
        return Karate.run("classpath:app/features/VerifyNumOfProFVAndroid.feature");
    }

    @Karate.Test
    public Karate testProductDetail() {
        return Karate.run("classpath:app/features/VerifyProductDetailAndroid.feature");
    }

    @Karate.Test
    public Karate testCartscreen() {
        return Karate.run("classpath:app/features/VerifyCartscreenAndroid.feature");
    }

    @Karate.Test
    public Karate testPaymentscreen() {
        return Karate.run("classpath:app/features/VerifyPaymentscreenAndroid.feature");
    }


    @Karate.Test
    public Karate testProfilescreen() {
        return Karate.run("classpath:app/features/VerifyProfilescreenAndroid.feature");
    }

}
