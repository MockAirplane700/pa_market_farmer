import 'dart:convert';

import 'package:pa_market_farmer/custom_objects/farm.dart';
import 'package:http/http.dart' as http;
class ProcessedData {
  // fetch data from data base
  //segregate data accordingly
  ///--------------------------------------------------------------------
  ///
  ///     Data fetching and setting methods
  ///
  /// -------------------------------------------------------------------
  static Future<Farm> fetchData() async {
    final response = await http.get(Uri.parse('https://hammerhead-app-an67q.ondigitalocean.app/api/farm?id=62b650059e9bd01f7f8817a3'));

    if  (response.statusCode == 200) {
      print(response.body);
      return Farm.fromJson(jsonDecode(response.body));
    }else{
      throw Exception(':Failed to load');
    }
  }
  /// -------------------------------------------------------------------
  ///
  ///       Data segregation methods
  ///
  /// -------------------------------------------------------------------
  ///

  static void segregateData(String string) {
    //Split the string accordingly first
  }//end segregate data
}
