import 'package:pa_market_farmer/custom_objects/driver.dart';

class Order {
  final String name;
  final String orderNumber;
  final int amount;
  final String networkUrl;
  final String status;
  final String deliveryAddress;
  final String cost;
  final Driver driver;

  Order({
    required this.name, required this.status, required this.driver,
    required this.amount, required this.deliveryAddress,
    required this.networkUrl, required this.orderNumber, required this.cost
});
}