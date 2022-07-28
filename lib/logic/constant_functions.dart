import 'dart:convert';

import 'package:pa_market_farmer/custom_objects/location.dart';
import 'package:pa_market_farmer/custom_objects/product.dart';

class ConstantFunctions {
  static List<String> getCategories(List<dynamic> list) {
    List<String> results = [];
    for (var element in list) {
      results.add(element);
    }
    return results;
  }

  static List<Product> getProduct(List<dynamic> list){
    List<Product> products = [];
    ///------------------------------------------
    ///   [
    ///     {
    ///       { "_id": ""},
    ///       "name" : "",
    ///       "photoUrl": "",
    ///       "available": "",
    ///       "price": "",
    ///       "capacity": "",
    ///       "priceUnit": "",
    ///       "harvestDate": "",
    ///     },
    ///
    ///     }
    ///
    ///     }
    ///   ]
    /// -----------------------------------------

    for (var element in list) {
        var jsonObject = json.decode(element);
        products.add(Product(
            priceUnit: jsonObject['priceUnit'], harvestDate: jsonObject['harvestDate'],
            photoUrl: jsonObject['photoUrl'], avaliable: jsonObject['available'],
            productId: jsonObject['_id'], productName: jsonObject['name']
        ));
    }

    return products;
  }

  static Location getLocation(String string) {

    ///------------------------------------------------
    ///     "location":"{
    ///                   "cordinates" : ["", ""],
    ///                   "address" : ""
    ///                 }"
    /// ----------------------------------------------

    var jsonObject = json.decode(string);
    return Location(address: jsonObject['address'], coordinates: jsonObject['coordinates']);
  }
}