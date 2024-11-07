Feature: Payment Screen

  Background: Setup feature
    * def locators = read("classpath:app/locators/paymentscreen-android.json")
    * def payment = locators.payment
    * configure retry = { count: 3, interval: 3000 }
    * def getCode =
    """
      function(e) {
        return e.substr(e.length - 6, 6);
      }
    """

  @VerifyPayment
  Scenario: Verify elements in payment
    * waitForText(payment.tittle, "Payment")
    * def code = getCode(text(payment.address))
    * match code == "370001"
    * match exists(payment.preferredDeliveryDate) == true
    * match text(payment.grandTotal) == "$414.20"
    * match text(payment.productName) == "Sunfeast Dark Fantasy Choco Fills, 600g (1 Pack)"
    * match text(payment.deliveryCharge) == "$0.00"
    * match text(payment.youSaved) == "$109.0"
    * match text(payment.subtotal) == "$414.20"
    * screenshot()