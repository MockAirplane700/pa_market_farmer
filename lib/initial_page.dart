// the first page displayed
import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';

import 'package:pa_market_farmer/custom_widgets/navigation_drawer.dart';

import 'package:pa_market_farmer/pages/home_page.dart';
import 'package:pa_market_farmer/pages/inventory_page.dart';
import 'package:pa_market_farmer/pages/login.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: primaryAppBarColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: primaryThemeDataColor),
      ),
      backgroundColor: primaryApplicationBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center               ,
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Inventory())
                      );
                    },
                    child: const Text("Inventory")
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage())
                      );
                    },
                    child: const Text("View Home")
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LogIn())
                      );
                    },
                    child: const Text("Login")
                ),
              ],
            )
          ],
        )

      ),
      drawer: const CustomNavigationDrawer(),
    );
  }
}
