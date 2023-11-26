import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:starbhak_mart/screen/CartPage.dart';
import 'package:starbhak_mart/screen/MenuPage.dart';
import 'package:starbhak_mart/widgets/HomeAppBar.dart';
import 'package:starbhak_mart/widgets/MenuCategory.dart';
import 'package:starbhak_mart/widgets/MenuList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  {
  int _currentIndex = 0;
  final List<Widget> _pages = [
      MenuPage(),
      CartPage()
    ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Starbhak Mart",
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: _pages[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.grey.shade200,
          // color: Colors.blue,
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
