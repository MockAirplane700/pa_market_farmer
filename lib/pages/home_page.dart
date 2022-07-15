import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';
import 'package:pa_market_farmer/custom_objects/order.dart';
import 'package:pa_market_farmer/logic/Orders_listing.dart';
import 'package:pa_market_farmer/pages/view_order.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Order> _list = OrdersList.getList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: primaryTextBackgroundColor),),
        backgroundColor: primaryAppBarColor,
        iconTheme: const IconThemeData(color: primaryThemeDataColor),
      ),
      backgroundColor: primaryApplicationBackgroundColor,
      body: Center(
        child: ListView.builder(
            itemBuilder: (context, index) {
              //check if list is empty
              if(_list.isEmpty) {
                return const Center(child: Text('No orders present'),);
              }else{
                return Card(
                  child: ListTile(
                    leading: Padding(padding:const  EdgeInsets.all(5.0),child: Image.network(_list[index].networkUrl),),
                    title: Text('Order number: ${_list[index].orderNumber}', style: const TextStyle(color: primaryTextBackgroundColor),),
                    subtitle: Text('Cost: \$${_list[index].cost}', style: const TextStyle(color: primaryTextBackgroundColor),),
                    onTap: () {
                      //go to the home viewing page for each order
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> ViewOrder(
                              cost: _list[index].cost, orderNumber: _list[index].orderNumber,
                              networkUrl: _list[index].networkUrl, amount: _list[index].amount,
                              status: _list[index].status, name: _list[index].name,
                              deliveryAddress: _list[index].deliveryAddress
                          ))
                      );
                    },
                  ),
                );
              }
            },
          itemCount: _list.length,
        ),
      ),
    );
  }
}
