Feature: Profile Screen

  Background: Setup feature
    * def locators = read("classpath:app/locators/profilescreen-android.json")
    * def profile = locators.profile

  @VerifyLoginscreen
  Scenario: Verify element Login screen
    * waitFor(profile.itemWelcometoeCart)
    * match exists(profile.textMobile) == true
    * match exists(profile.textPassword) == true
    * match exists(profile.btnLogin) == true
    * match exists(profile.anchorForgot) == true
    * match exists(profile.btnSignup) == true
    * screenshot()

  @GoToLoginScreen
  Scenario: Go to Login screen
    * waitFor(profile.itemWelcomeGuest)
    * click(profile.itemWelcomeGuest)

  @Login
  Scenario: Login
    * click(profile.btnLogin)

  @VerifyProfilescreen
  Scenario: Verify element Profile screen
    * waitFor(profile.itemWelcomeGuest)
    * match exists(profile.itemHome) == true
    * match exists(profile.itemCart) == true
    * match exists(profile.itemNotification) == true
    * match exists(profile.itemMenuOrder) == true
    * match exists(profile.itemWalletHistory) == true
    * match exists(profile.itemTransactionHistory) == true
    * match exists(profile.itemChangePassword) == true
    * match exists(profile.itemManageAddress) == true
    * match exists(profile.itemReferEarn) == true
    * match exists(profile.itemContactUs) == true
    * match exists(profile.itemAboutUs) == true
    * match exists(profile.itemRateUs) == true
    * match exists(profile.itemShareApp) == true
    * screenshot()
    * call read("classpath:app/commons/ScrollByLocator.feature@ScrollByLocator") {_locator: "#(profile.itemFAQ)", _count: 10}
    * match exists(profile.itemFAQ) == true
    * match exists(profile.itemTerm) == true
    * match exists(profile.itemPrivacy) == true
    * match exists(profile.itemLogout) == true
    * screenshot()