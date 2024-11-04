Feature: Category Screen

  Background: Setup feature
    * def locators = read("classpath:app/locators/categoryscreen-android.json")
    * def category = locators.category
    * def fastfood = locators.fastfood

  @VerifyCategoryscreen
  Scenario: Verify element Categoryscreen
    * waitFor(category.itemCoffeeProduct)
    * match exists(category.itemCoffeeProduct) == true
    * match exists(category.itemFastFood) == true
    * match exists(category.itemHomeSupplies) == true
    * match exists(category.itemBeverages) == true
    * match exists(category.itemBabyNeed) == true
    * screenshot()

  @GoToFastFood
  Scenario: Go to Fast Food
    * waitFor(category.itemCoffeeProduct)
    * click(category.itemFastFood)

  @AddToCartKukureNamKeen
  Scenario: Add to Cart with Quantity = 2 of “Kurkure Namkeen - Masala Munch,” product
    * waitFor(fastfood.itemKukureData)
    * click(fastfood.btnAddCartKukure)