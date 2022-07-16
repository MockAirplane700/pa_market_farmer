class Product {
  //Take note of Inventory Item object
  final String name;
  final String description;
  final String networkImage;
  final String cost;
  final String stock;
//name description network cost stock
  Product({
    required this.name, required this.description,
    required this.cost, required this.stock,
    required this.networkImage
});
}