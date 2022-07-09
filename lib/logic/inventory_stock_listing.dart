import 'package:pa_market_farmer/custom_objects/inventory_item.dart';

class InventoryListing {
  static final List<InventoryItemObject> _list = [
    InventoryItemObject(
        name: 'Tomatoes',
        stock: 40,
        photoUrl: 'https://www.greenlife.co.ke/wp-content/uploads/2020/02/Tomatoes-Farm-scaled-2560x1280.jpg',
        stockId: '4548'
    ),
  ];

  static List<InventoryItemObject> getInventoryList() {
    return _list;
  }
}