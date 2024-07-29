class TPricingCaculator {
  TPricingCaculator._();

  static double caculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice * taxAmount * shippingCost;
    return totalPrice;
  }

  static String caculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String caculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.01; // 10%
  }

  static double getShippingCost(String location) {
    return 5.00;
  }

  // static double caculateCartTotal(CartModel cart) {
  //   return cart.items.map(e => e.price).fold(0, (prevousPrice, currentPrice) => prevousPrice + (currentPrice??0));
  // }
}
