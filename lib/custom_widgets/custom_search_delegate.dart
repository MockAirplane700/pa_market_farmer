import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/inventory_item.dart';
import 'package:pa_market_farmer/logic/inventory_stock_listing.dart';
import 'package:pa_market_farmer/pages/inventory_item_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomSearchDelegate extends SearchDelegate{
  final List<InventoryItemObject> _list = InventoryListing.getInventoryList();
  int indexValue = 0;
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear)
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final double indicatorSize =  (MediaQuery.of(context).size.width/15);
    return  ListTile(
      //todo: consider adding a box container to control size of the card
      leading: CircularPercentIndicator(
        radius: indicatorSize,
        lineWidth: 25.0,
        animation: true,
        animationDuration: 1200,
        percent: _list[indexValue].stock/100,
        progressColor: Colors.lightGreen,
      ),
      title: Text('Name of product: ${_list[indexValue].name}'),
      subtitle: Text('Stock id: ${_list[indexValue].stockId}'),
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context)=> InventoryItem(
            stockId: _list[indexValue].stockId,
            name: _list[indexValue].name,
            photoUrl: _list[indexValue].photoUrl,
            stock: _list[indexValue].stock
        )));
      },
    );
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    List<InventoryItemObject> suggestions = _list.where((element) {
      final elementNameComparison = element.name.toLowerCase();
      final elementInventoryStockIdComparator = element.stockId.toLowerCase();
      final input = query.toLowerCase();
      return elementNameComparison.contains(input) || elementInventoryStockIdComparator.contains(input);
    }).toList();

    return ListView.builder(
        itemBuilder: (context, index) {
          if (suggestions.isEmpty) {
            return Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const  [
                CircularProgressIndicator(),
                Text('Empty please wait ')
              ],
            ),);
          } else {
            final double indicatorSize =  (MediaQuery.of(context).size.width/15);
            return  ListTile(
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
                query = suggestions[index].name;
                showResults(context);
                // Navigator.push(context,MaterialPageRoute(builder: (context)=> InventoryItem(
                //     stockId: _list[indexValue].stockId,
                //     name: _list[indexValue].name,
                //     photoUrl: _list[indexValue].photoUrl,
                //     stock: _list[indexValue].stock
                // )));
              },
            );
          }
        },
      itemCount: suggestions.length,
    );
  }

}