Feature: Home Screen

  Background: Setup feature
    * def locators = read("classpath:app/locators/homepage-android.json")
    * def homepage = locators.homepage
    * def ddl = locators.homepage.ddl
    * def vegetables = locators.homepage.content.vegetables
    * def coffee = locators.homepage.content.coffee
    * def freshVegetablePage = locators.homepage.freshVegetablePage

  @ChooseDDL
  Scenario: Choose Default Delivery Location
    * waitFor(ddl.textData)
    * waitFor(ddl.itemAll)
    * click(ddl.itemAll)

  @ChooseDDL-370405
  Scenario: Choose Default Delivery Location
    * waitFor(ddl.textData)
    * waitFor(ddl.item370405)
    * click(ddl.item370405)

  @ChooseDDL-370001
  Scenario: Choose Default Delivery Location
    * waitFor(ddl.textData)
    * waitFor(ddl.item370001)
    * click(ddl.item370001)

  @VerifyDDL
  Scenario: Verify elements Default Delivery Location
    * waitFor(ddl.textData)
    * match exists(ddl.textboxSearch) == true
    * match exists(ddl.btnSearch) == true
    * def textElements = call read("classpath:app/commons/GetElements.feature@GetTextElements") {xpath: "#(ddl.listItem)"}
    * match textElements.response == ["All", "370405", "841301", "800001", "370465", "370001"]
    * screenshot()

  @GoToCategoryScreen
  Scenario: Go to Category Screen
    * waitFor(homepage.tittleApp)
    * click(homepage.navs.category)

  @ScrollToFreshVegetable
  Scenario: Scroll to Fresh Vegetables
    * waitFor(homepage.tittleApp)
    * call read("classpath:app/commons/ScrollByLocator.feature@ScrollByLocator") {_locator: "#(vegetables.item3)", _count: 10}

  @ScrollToCoffee
  Scenario: Scroll to Coffee
    * waitFor(homepage.tittleApp)
    * call read("classpath:app/commons/ScrollByLocator.feature@ScrollByLocator") {_locator: "#(coffee.tittle)", _count: 10}

  @VerifyFreshVegetableHome
  Scenario: Verify 3 elements in Vegetable part in homepage
    * waitFor(vegetables.tittle)
    * def elements = call read("classpath:app/commons/GetElements.feature@GetElementsByXpath") {_xpath: "#(vegetables.listItem)"}
    * match karate.sizeOf(elements.response) == 3
    * screenshot()

  @GoToFreshVegetablePage
  Scenario: Go to Fresh Vegetable page
    * waitFor(vegetables.tittle)
    * click(vegetables.anchorViewAll)

  @GoToCoffeePage
  Scenario: Go to Coffee page
    * waitFor(coffee.tittle)
    * click(coffee.anchorViewAll)

  @VerifyFreshVegetablePage
  Scenario: Verify 10 elements in Fresh Vegetable Page
    * waitForText(freshVegetablePage.tittle, "Fresh Vagetables")
    * def response = call read("classpath:app/commons/GetElements.feature@GetElementsScrollByXpath") {xpath: "#(freshVegetablePage.listItem)"}
    * match karate.sizeOf(response.response) == 10
    * screenshot()

  @GoToProfileScreen
  Scenario: Go to Profile Screen
    * waitFor(homepage.tittleApp)
    * click(homepage.navs.profile)

