Feature: Category Screen

  Background: Setup feature
    * def locators = read("classpath:app/locators/categoryscreen-android.json")
    * def category = locators.category
    * def fastfood = locators.fastfood
    * def beverages = locators.beverages

  @VerifyCategoryscreen
  Scenario: Verify element Categoryscreen
    * waitFor(category.itemCoffeeProduct)
    * match exists(category.itemCoffeeProduct) == true
    * match exists(category.itemFastFood) == true
    * match exists(category.itemHomeSupplies) == true
    * match exists(category.itemBeverages) == true
    * match exists(category.itemBabyNeed) == true
    * screenshot()

  @GoToBeverages
  Scenario: Go to Beverages
    * waitFor(category.itemCoffeeProduct)
    * click(category.itemBeverages)

  @GoToFastFood
  Scenario: Go to Fast Food
    * waitFor(category.itemCoffeeProduct)
    * click(category.itemFastFood)

  @AddToCartKukureNamKeen
  Scenario: Add to Cart with Quantity = 2 of “Kurkure Namkeen - Masala Munch,” product
    * call read("classpath:app/commons/ScrollByLocator.feature@ScrollByLocator") {_locator: "#(fastfood.itemKukureData)", _count: 10}
    * click(fastfood.btnAddCart)
    * click(fastfood.btnAddQuantity)

  @AddToCartSunfeast
  Scenario: Add to Cart with Quantity = 2 of “Sunfeast Dark Fantasy Choco Fills, 600g” product
    * call read("classpath:app/commons/ScrollByLocator.feature@ScrollByLocator") {_locator: "#(beverages.btnAddCart)", _count: 10}
    * click(beverages.btnAddCart)
    * click(beverages.btnAddQuantity)

  @GoToCart
  Scenario: Go to cart
    * click(fastfood.cart)