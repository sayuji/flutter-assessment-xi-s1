import 'package:flutter/material.dart';
import 'package:starbhak_mart/widgets/HomeAppBar.dart';
import 'package:starbhak_mart/widgets/MenuCategory.dart';
import 'package:starbhak_mart/widgets/MenuList.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const HomeAppBar(),
          MenuCategory(),
          MenuList()
        ],
      )
    );
  }
}