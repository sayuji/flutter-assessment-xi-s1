import 'package:flutter/material.dart';
import 'package:starbhak_mart/widgets/CartAppBar.dart';
import '../widgets/CartItem.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200 ,
      body: ListView(
        children: [
          CartAppBar(),
          
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
            ),
            child: const Column(children: [
              CartItem(),
            ]),
          )
        ],
      ),
    );
  }
}