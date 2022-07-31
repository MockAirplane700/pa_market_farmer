import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';
import 'package:pa_market_farmer/custom_widgets/custom_search_delegate.dart';
import 'package:pa_market_farmer/custom_widgets/navigation_drawer.dart';

class DriverPage extends StatefulWidget {
  final String name;
  final String addy;
  final String orderNumber;
  final String orderName;
  final String orderAmount;
  final String orderCost;
  final String phoneNumber;
  final int completedDeliveries;
  final int failedDeliveries;
  final String timeStamp;
  final String type;

  const DriverPage({
    Key? key, required this.phoneNumber, required this.name,
    required this.orderNumber, required this.addy,
    required this.completedDeliveries, required this.failedDeliveries,
    required this.orderAmount, required this.orderCost,
    required this.orderName, required this.timeStamp, required this.type
  }) : super(key: key);

  @override
  State<DriverPage> createState() => _DriverPageState();
}

class _DriverPageState extends State<DriverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver', style: TextStyle(color: primaryTextBackgroundColor),),
        backgroundColor: primaryAppBarColor,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search)
          )
        ],
        iconTheme: const IconThemeData(color: primaryThemeDataColor),
      ),
      backgroundColor: primaryApplicationBackgroundColor,
      body: Center(child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //perhaps driver image next to it the name of driver and type of vehicle
            Row(
              children: [
                Expanded(child: Padding(padding: const EdgeInsets.all(5.0), child: Image.network('https://image.shutterstock.com/image-vector/deliveryman-parcels-flat-illustration-courier-600w-1410732563.jpg'),)),
                Expanded(child: Column(children: [
                  Text('Driver name: ${widget.name}', style: const TextStyle(color: primaryTextBackgroundColor),),
                  Text('Completed deliveries: ${widget.completedDeliveries}', style: const TextStyle(color: primaryTextBackgroundColor),),
                  Text('Failed deliveries: ${widget.failedDeliveries}', style: const TextStyle(color: primaryTextBackgroundColor),),
                  Text('Vehicle: ${widget.type}', style: const TextStyle(color: primaryTextBackgroundColor),),
                ],))
              ],
            ),
            Text('Delivery Address: ${widget.addy}', style: const TextStyle(color: primaryTextBackgroundColor),),
            //the order details in the format of an invoice includes addy
            Padding(padding: const EdgeInsets.all(15.0), child: Column(
              children: [
                Text('Order name: ${widget.orderName}', style: const TextStyle(color: primaryTextBackgroundColor),),
                Text('Order number: ${widget.orderNumber}', style: const TextStyle(color: primaryTextBackgroundColor),),
                Text('Timestamp : ${widget.timeStamp}', style: const TextStyle(color: primaryTextBackgroundColor),),
                Text('Order amount: ${widget.orderAmount}', style: const TextStyle(color: primaryTextBackgroundColor),),
                Text('Order cost: ${widget.orderCost}', style: const TextStyle(color: primaryTextBackgroundColor),)
              ],
            ),),
            // contact driver
            Row(
              children: [
                Expanded(child: ElevatedButton(
                    onPressed: () {
                      //call driver using url launcher
                    },
                    child:  const Text('Call driver', style:  TextStyle(color: primaryTextBackgroundColor),)
                ))
              ],
            )
          ],
        ),
      ),),
    );
  }
}
