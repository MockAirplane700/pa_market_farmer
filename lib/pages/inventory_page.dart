import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';

class Inventory extends StatefulWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory", style: TextStyle(color: primaryTextBackgroundColor),),
        iconTheme: const IconThemeData(color: primaryThemeDataColor),
        elevation: 0,
      ),
      backgroundColor: primaryApplicationBackgroundColor,
      body: Center(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return const Text("Halo");
            },
          itemCount: 1,
        ),
      ),
    );
  }
}
