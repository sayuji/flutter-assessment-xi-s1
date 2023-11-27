import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:starbhak_mart/screen/CartPage.dart';
import 'package:starbhak_mart/screen/MenuPage.dart';
import 'package:starbhak_mart/widgets/HomeAppBar.dart';
import 'package:starbhak_mart/widgets/MenuCategory.dart';
import 'package:starbhak_mart/widgets/MenuList.dart';
import 'package:starbhak_mart/widgets/basket.dart';
import 'package:starbhak_mart/widgets/date.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  {
  int _currentIndex = 0;
  void updateParentValue(int newValue) {
    setState(() {
      _currentIndex = newValue;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      MenuPage(),
      Bskt(callback: updateParentValue),
      Date(callback: updateParentValue)
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Starbhak Mart",
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: _pages[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          index: _currentIndex,
          backgroundColor: Colors.grey.shade100,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
            _currentIndex = index;
          });
          },
          items: [
            Icon(
              Icons.home,
              // color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              // color: Colors.white,
            ),
            Icon(
              Icons.format_list_bulleted_add,
              // color: Colors.white,
            ),
          ]
        ),
    
      )
    );
  }
}
