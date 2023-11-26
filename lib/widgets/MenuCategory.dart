import 'package:flutter/material.dart';

class MyObject {
  final String text;
  final String imagePath;

  MyObject({required this.text, required this.imagePath});
}

class MenuCategory extends StatefulWidget {
  @override
  _MenuCategoryState createState() => _MenuCategoryState();
}

class _MenuCategoryState extends State<MenuCategory> {
  String selectedIndex = 'All';
  final List<MyObject> items = [
    MyObject(text: "All", imagePath: 'image/Burger.jpeg'),
    MyObject(text: "Promo", imagePath: 'image/Burger.jpeg'),
    MyObject(text: "Foods", imagePath: 'image/Burger.jpeg'),
    MyObject(text: "Beverages", imagePath: 'image/Burger.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          scrollDirection: Axis.horizontal,
          children: items.map((MyObject item) {
            return GestureDetector(
              onTap: () {
                print(item.text);
                setState(() {
                  selectedIndex = item.text;
                });
              },
              child: Container(
                width: 100,
                margin: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: selectedIndex == item.text
                              ? Colors.blueAccent
                              : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: Offset(0, 3), // Offset to bottom-right
                            ),
                          ],
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            25.0), // Border radius for the image
                        child: Image(
                            image: AssetImage(item.imagePath),
                            height: 80,
                            width: 80),
                      ),
                    ),
                    Text(item.text)
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}
