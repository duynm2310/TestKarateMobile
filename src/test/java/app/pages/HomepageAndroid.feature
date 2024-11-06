Feature: Home Screen

  Background: Setup feature
    * def locators = read("classpath:app/locators/homepage-android.json")
    * def homepage = locators.homepage
    * def ddl = locators.homepage.ddl
    * def vegetables = locators.homepage.content.vegetables
    * def freshVegetablePage = locators.homepage.freshVegetablePage
#    * def Locator = Java.type("app.utils.Locator")

  @ChooseDDL
  Scenario: Choose Default Delivery Location
    * waitFor(ddl.textData)
    * click(ddl.itemAll)

  @VerifyDDL
  Scenario: Verify elements Default Delivery Location
    * waitFor(ddl.textData)
    * match exists(ddl.textboxSearch) == true
    * match exists(ddl.btnSearch) == true
    * match exists(ddl.btnSearch) == true
#    * def result =  Locator.getElement(driver, ddl.listItem)
#    * print result
    * match text(ddl.itemAll) == "All"
    * match text(ddl.item370405) == "370405"
    * match text(ddl.item841301) == "841301"
    * match text(ddl.item800001) == "800001"
    * match text(ddl.item370465) == "370465"
    * match text(ddl.item370001) == "370001"
    * screenshot()
#    * def list = locateAll(ddl.listItem)
#    * match list == ["All", "370405", "841301", "800001", "370465", "370001"]

  @GoToCategoryScreen
  Scenario: Go to Category Screen
    * waitFor(homepage.tittleApp)
    * click(homepage.navs.category)

  @ScrollToFreshVegetable
  Scenario: Scroll to Fresh Vegetables
    * waitFor(homepage.tittleApp)
    * call read("classpath:app/commons/ScrollByLocator.feature@ScrollByLocator") {_locator: "#(vegetables.item3)", _count: 10}

  @VerifyFreshVegetableHome
  Scenario: Verify 3 elements in Vegetable part in homepage
    * waitFor(vegetables.tittle)
    * match exists(vegetables.item1) == true
    * match exists(vegetables.item2) == true
    * match exists(vegetables.item3) == true
    * screenshot()

  @GoToFreshVegetablePage
  Scenario: Go to Fresh Vegetable page
    * waitFor(vegetables.tittle)
    * click(vegetables.anchorViewAll)

  @VerifyFreshVegetablePage
  Scenario: Verify 10 elements in Fresh Vegetable Page
    * match text(freshVegetablePage.tittle) == "Fresh Vagetables"
    * call read("classpath:app/commons/ScrollByLocator.feature@ScrollByLocator") {_locator: "#(freshVegetablePage.item10)", _count: 10}
    * match exists(freshVegetablePage.item10) == true

  @GoToProfileScreen
  Scenario: Go to Profile Screen
    * waitFor(homepage.tittleApp)
    * click(homepage.navs.profile)

