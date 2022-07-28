import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InventoryItem extends StatefulWidget {
  final String name, stockId, photoUrl;
  final int stock;
  const InventoryItem({Key? key, required this.stockId, required this.name, required this.photoUrl, required this.stock}) : super(key: key);

  @override
  State<InventoryItem> createState() => _InventoryItemState();
}

class _InventoryItemState extends State<InventoryItem> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double textSize = MediaQuery.of(context).size.width/20;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory item', style: TextStyle(color: primaryTextBackgroundColor),),
        backgroundColor: primaryAppBarColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: primaryThemeDataColor),
      ),
      backgroundColor: primaryApplicationBackgroundColor,
      body:  Padding(padding: const EdgeInsets.all(5.0), child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //first row holds the progress indicator and a column of name and how much is in stock as well as stockid
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: CircularPercentIndicator(
                    radius: MediaQuery.of(context).size.width/5,
                  animation: true,
                  animationDuration: 1200,
                  progressColor: Colors.lightGreen,
                  percent: widget.stock/100,
                )),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Name of product: ${widget.name}', style: const TextStyle(color: primaryTextBackgroundColor,fontSize: 18),),
                    Text('Product stock id: ${widget.stockId}', style: const TextStyle(color: primaryTextBackgroundColor,fontSize: 18),),
                    Text('Amount left: ${widget.name}', style: const TextStyle(color: primaryTextBackgroundColor,fontSize: 18),),
                  ],
                ))
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            //Second row holds the buttons to add new things to the stock as well as to remove stock as well as modify stock
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      //open dialog box that has a form that takes the required stuff
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                          title: const Text('Add to inventory', style: TextStyle(color: primaryTextBackgroundColor),),
                            content: Form(
                              key: _formKey,
                                child: Column(
                                  children: [
                                    //name
                                    TextFormField(
                                      decoration: InputDecoration(hintText: 'The current product name: ${widget.name}'),
                                    ),
                                    //stockId
                                    TextFormField(
                                      decoration: InputDecoration(hintText: 'Current stock ID: ${widget.name}'),
                                    ),
                                    TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty){
                                          return 'Cannot submit an empty submission to the database';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.number,
                                      decoration:const InputDecoration(hintText: 'Enter amount'),
                                    ),

                                    Padding(padding: const EdgeInsets.all(10.0), child: ElevatedButton(
                                        onPressed: () {
                                          //todo: add the required information to database

                                          //leave a snack bar and or check mark to show success and relevant one when failed
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(content:Text('Item has been added'))
                                          );
                                          //exit from dialog
                                          Navigator.pop(context,'');
                                        },
                                        child: const Text('Submit')
                                    ),)
                                  ],
                                )
                            ) ,
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel')
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Add');
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Adding data')));
                                  },
                                  child: const Text('Add')
                              ),
                            ],
                          )
                      );
                    },
                    child: const Text('Add',style: TextStyle(color: primaryTextBackgroundColor),)
                ),
                SizedBox(width: MediaQuery.of(context).size.width/5,),
                ElevatedButton(
                    onPressed: () {
                      //open dialog box that has a form that takes the required stuff
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Add to inventory', style: TextStyle(color: primaryTextBackgroundColor),),
                            content: const Text('Form to fill out the required stuff') ,
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel')
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Add');
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Adding data')));
                                  },
                                  child: const Text('Add')
                              ),
                            ],
                          )
                      );
                    },
                    child: const Text('Remove',style: TextStyle(color: primaryTextBackgroundColor),)
                )
              ],
            )
          ],
        ),
      ),),
    );
  }
}
