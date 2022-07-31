import 'package:flutter/material.dart';
import 'package:pa_market_farmer/pages/home_page.dart';
import 'package:pa_market_farmer/pages/inventory_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  const CustomBottomNavigationBar({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      //open inventory
      Navigator.push(context,
        MaterialPageRoute(builder: (context)=> const Inventory())
      );
    } else{
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=> const HomePage())
      );
    }//end if-else
  }

  @override
  Widget build(BuildContext context) {
    _selectedIndex = widget.selectedIndex;
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Icon(Icons.warehouse_outlined),
            label: 'Inventory'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home'
          ),
        ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      onTap: _onItemTapped,
    );
  }
}
