Feature: Cart Screen

  Background: Setup feature
    * def locators = read("classpath:app/locators/cartscreen-android.json")
    * def cart = locators.cart
    * configure retry = { count: 3, interval: 3000 }

  @VerifyCart
  Scenario: Verify elements in cart
    * waitFor(cart.data)
    * match text(cart.deliverTo) == "370405"
    * match text(cart.productName) == "Kurkure Namkeen - Masala Munch,"
    * match text(cart.productPrice) == "$13.00"
    * match text(cart.productMeasurment) == "85 kg"
    * match text(cart.productTotal) == "$26.00"
    * match text(cart.productQuantity) == "2"
    * match exists(cart.btnDelete) == true
    * match exists(cart.btnSave) == true
    * match exists(cart.btnPromo) == true
    * match exists(cart.btnContinute) == true
    * screenshot()

  @ClickContinue
  Scenario: Click continue
    * waitFor(cart.data)
    * click(cart.btnContinute)

  @ClickConfirm
  Scenario: Click confirm
    * waitForText(cart.tittle, "Address")
    * click(cart.btnConfirm)