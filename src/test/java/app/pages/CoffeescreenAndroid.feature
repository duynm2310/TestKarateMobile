Feature: Coffee Screen

  Background: Setup feature
    * def locators = read("classpath:app/locators/coffeescreen-android.json")
    * def coffee = locators.coffee

  @GoToHOICP
  Scenario: Go to product "High Octane Instant Coffee…" detail
    * waitForText(coffee.tittle, "Coffee")
    * call read("classpath:app/commons/ScrollByLocator.feature@ScrollByLocator") {_locator: "#(coffee.itemHOICP)", _count: 10}
    * click(coffee.itemHOICP)

  @VerifyHOICP
  Scenario: Verify elements in product "High Octane Instant Coffee…" detail
    * waitForText(coffee.tittle, "eCart Multi Vendor - Customer")
    * match text(coffee.productName) == "High Octane Instant Coffee Paste with Hazelnut and Coconut Flavors, 150G - Pack of 2 (Hazelnut and Coconut Beaten Coffee Paste)"
    * match text(coffee.productPrice) == "$718.31"
    * match exists(coffee.btnAddToCart) == true
    * match exists(coffee.btnGoToCart) == true
    * screenshot()
    * call read("classpath:app/commons/ScrollByLocator.feature@ScrollByLocator") {_locator: "#(coffee.tittleSimilar)", _count: 10}
    * match exists(coffee.tittleSimilar) == true
    * screenshot()