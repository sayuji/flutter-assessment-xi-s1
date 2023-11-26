import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.blue
          ),  
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Cart",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
           ),
          ),
        ),
        Spacer(),
        Icon(Icons.more_vert,
        size: 30,
        color: Colors.blue
        )
      ]),
    );
  }
}