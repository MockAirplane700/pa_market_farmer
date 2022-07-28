import 'package:pa_market_farmer/custom_objects/product.dart';

class Products {
  static final List<Product> _list = [
    Product(name: 'Tomatoes',
        description: 'Lorem ispum some description', cost: '29.99',
        stock: '200', networkImage: 'https://trendsnafrica.com/wp-content/uploads/2021/08/tomat.jpg'
    ),
  ];

  static List<Product> getProducts() {
    return _list;
  }
}