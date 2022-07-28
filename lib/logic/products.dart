import 'package:pa_market_farmer/custom_objects/product.dart';

class Products {
  static final List<Product> _list = [

    Product(
        priceUnit: 'kg', harvestDate: '',
        photoUrl: 'https://trendsnafrica.com/wp-content/uploads/2021/08/tomat.jpg', avaliable: '', productId: '',
        productName: 'Tomatoes'
    )
  ];

  static List<Product> getProducts() {
    return _list;
  }
}