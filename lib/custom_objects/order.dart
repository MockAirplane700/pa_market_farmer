class Order {
  final String name;
  final String orderNumber;
  final int amount;
  final String networkUrl;
  final String status;
  final String deliveryAddress;
  final String cost;

  Order({
    required this.name, required this.status,
    required this.amount, required this.deliveryAddress,
    required this.networkUrl, required this.orderNumber, required this.cost
});
}