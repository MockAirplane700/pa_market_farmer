import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';
import 'package:pa_market_farmer/custom_objects/inventory_item.dart';
import 'package:pa_market_farmer/logic/inventory_stock_listing.dart';
import 'package:pa_market_farmer/pages/inventory_item_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Inventory extends StatefulWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  final List<InventoryItemObject> _list = InventoryListing.getInventoryList();

  @override
  Widget build(BuildContext context) {
    final double indicatorSize =  (MediaQuery.of(context).size.width/15);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory", style: TextStyle(color: primaryTextBackgroundColor),),
        iconTheme: const IconThemeData(color: primaryThemeDataColor),
        backgroundColor: primaryAppBarColor,
        elevation: 0,
      ),
      backgroundColor: primaryApplicationBackgroundColor,
      body: Center(
        child: ListView.builder(
            itemBuilder: (context, index) {
              if (_list.isEmpty) {
                //return message saying list is empty
                return const Center(child: Text('There is currently no recorded inventory available to be shown'),);
              }else{
                //list is not empty we populate the page
                return Card(
                    child: ListTile(
                      //todo: consider adding a box container to control size of the card
                  leading: CircularPercentIndicator(
                      radius: indicatorSize,
                    lineWidth: 25.0,
                    animation: true,
                    animationDuration: 1200,
                    percent: _list[index].stock/100,
                    progressColor: Colors.lightGreen,
                  ),
                  title: Text('Name of product: ${_list[index].name}'),
                  subtitle: Text('Stock id: ${_list[index].stockId}'),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> InventoryItem(
                        stockId: _list[index].stockId,
                        name: _list[index].name,
                        photoUrl: _list[index].photoUrl,
                        stock: _list[index].stock
                    )));
                  },
                ),

                );

              }
              return const Text("Halo");
            },
          itemCount: _list.length,
        ),
      ),
    );
  }
}
