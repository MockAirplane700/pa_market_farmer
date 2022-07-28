import 'package:pa_market_farmer/custom_objects/location.dart';
import 'package:pa_market_farmer/custom_objects/product.dart';
import 'package:pa_market_farmer/logic/constant_functions.dart';

class Farm {

  final String farmId;
  final String farmName;
  final String farmDescription;
  final Location location;
  final String photoUrl;
  final String logo;
  final String email;
  final String phoneNumber;
  final List<String> catergories;
  final List<Product> product;

  const Farm({
    required this.product, required this.photoUrl, required this.farmDescription,
    required this.farmName, required this.email,required this.phoneNumber,
    required this.logo, required this.catergories, required this.farmId, required this.location
});

  // Json serialization

  factory Farm.fromJson(Map<String,dynamic> json) {
    return Farm(
        product: ConstantFunctions.getProduct(json['crops']),
        photoUrl: json['photoUrl'],
        farmDescription: json['description'],
        farmName: json['name'], email: json['email'],
        phoneNumber: json['phoneNumber'], logo: json['logoUrl'], catergories: ConstantFunctions.getCategories(json['category']),
        farmId: json['_id'].toString(),
        location:ConstantFunctions.getLocation(json['location'].toString())
    );
  }
 

 
}