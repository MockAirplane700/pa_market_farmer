// an object that holds all the required fields of the inventory

class InventoryItemObject {
  String name , stockId, photoUrl;
  int stock;
  bool available;
  String priceUnit;
  String harvestDate;

  InventoryItemObject({
    required this.name, required this.stock, required this.photoUrl, required this.stockId,
    required this.available, required this.harvestDate, required this.priceUnit
  }
      );



}