import 'package:pa_market_farmer/custom_objects/order.dart';

class Driver {
  final String name;
  final String driverId;
  final int numberOfSuccessfulDeliveries;
  final int numberFailedDeliveries;
  final String phoneNumber;
  final String storageType;

  Driver({
    required this.name, required this.phoneNumber, required this.driverId,
    required this.numberFailedDeliveries, required this.numberOfSuccessfulDeliveries,
    required this.storageType
});
}