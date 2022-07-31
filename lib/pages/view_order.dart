import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';
import 'package:pa_market_farmer/custom_objects/driver.dart';
import 'package:pa_market_farmer/custom_widgets/custom_search_delegate.dart';
import 'package:pa_market_farmer/custom_widgets/navigation_drawer.dart';
import 'package:pa_market_farmer/pages/driver_page.dart';



class ViewOrder extends StatefulWidget {
  final String name;
  final String orderNumber;
  final int amount;
  final String networkUrl;
  final String status;
  final String cost;
  final Driver driver;

  final String deliveryAddress;
  const ViewOrder({Key? key,
    required this.cost, required this.orderNumber, required this.networkUrl,

    required this.amount, required this.status, required this.name, required this.deliveryAddress,
    required this.driver
  }) : super(key: key);

  @override
  State<ViewOrder> createState() => _ViewOrderState();
}

class _ViewOrderState extends State<ViewOrder> {
  Color buttonColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    setState(() {
      if (widget.status.contains('complete')){
        buttonColor = Colors.green;
      }else if (widget.status.contains('in progress')){
        buttonColor = Colors.amber;
      }else{
        buttonColor = Colors.red;
      }//end if-else
    });
    return Scaffold(
      appBar: AppBar(
        title:  Text('Order: ${widget.orderNumber}', style: const TextStyle(color: primaryTextBackgroundColor),),
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
      body: Padding(padding: const EdgeInsets.all(5.0), child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //holds network image on the left and then information order
            Row(
              children: [
                Expanded(child: Padding(padding:const  EdgeInsets.all(5.0), child: Image.network(widget.networkUrl,),)),
                Expanded(child: Column(
                  children: [
                    Text('Name: ${widget.name}', style: const TextStyle(color: primaryTextBackgroundColor),),
                    Text('Quantity: ${widget.amount}', style: const TextStyle(color: primaryTextBackgroundColor),),
                    Text('Cost: \$${widget.cost}', style: const TextStyle(color: primaryTextBackgroundColor),),
                    Text('Delivery Address: ${widget.deliveryAddress}', style: const TextStyle(color: primaryTextBackgroundColor),),
                  ],
                ))
              ],
            ),
            //Holds two buttons either accept the order or deny it
            Column(
              children: [
                Row(
                  children: [
                    Expanded(child: ElevatedButton(
                      onPressed: () {
                        //accept the order
                        setState(() {
                          buttonColor = Colors.amber;
                        });

                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Order accepted')));
                      },
                      child: const Text('Accept Order'),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: ElevatedButton(
                      onPressed: () {
                        //accept the order
                        setState(() {
                          buttonColor = Colors.red;
                        });

                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Order has been denied and cancelled')));
                      },
                      child: const Text('Cancel Order'),
                    )),
                  ],
                )
              ],
            ),
            //Last button gives the option to list the order as complete
            Row(
              children: [
                //change the button color to show status of completeness
                Expanded(child: ElevatedButton(
                    onPressed: () {


                      DateTime timestamp = DateTime.now();
                      String formatedTimeStamp = DateFormat('kk:mm:ss').format(timestamp);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DriverPage(
                          phoneNumber: widget.driver.phoneNumber, name: widget.driver.name,
                          orderNumber: widget.orderNumber, addy: widget.deliveryAddress,
                          completedDeliveries: widget.driver.numberOfSuccessfulDeliveries, failedDeliveries: widget.driver.numberFailedDeliveries,
                          orderAmount: widget.amount.toString(), orderCost: widget.cost,
                          orderName: widget.name, timeStamp: formatedTimeStamp,
                          type: widget.driver.storageType
                      ))
                      );

                      //check status of order, if complete green if not maybe amber, if denied red
                      if (widget.status.contains('complete')){
                        //order is complete
                        if (buttonColor == Colors.green){
                          //send message the order is already complete
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Order is already complete')));
                        }else{
                          //change the color
                          setState(() {
                            buttonColor = Colors.green;
                          });

                        }
                      } else if (widget.status.contains('in progress')){
                        // we color the button amber
                        setState(() {
                          buttonColor = Colors.amber;
                        });

                      }else{
                        //it has been cancelled hence the button is red
                        setState(() {
                          buttonColor = Colors.red;
                        });

                      }
                    },
                  style: ElevatedButton.styleFrom(
                    primary: buttonColor
                  ),
                    child: const Text('Mark as complete'),
                ))
              ],
            )
          ],
        ),
      ),),
    );
  }
}
