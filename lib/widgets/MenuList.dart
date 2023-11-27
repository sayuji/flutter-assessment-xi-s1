import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imagePath;
  final int price;

  Product({required this.name, required this.imagePath, required this.price});
}

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  final List<Product> items = [
    Product(name: "Burger", price: 25000, imagePath: 'image/Burger.jpeg'),
    Product(name: "Pizza", price: 45000, imagePath: 'image/Pizza.jpeg'),
    Product(name: "Ramen", price: 30000, imagePath: 'image/Ramen.jpeg'),
    Product(name: "Steak", price: 40000, imagePath: 'image/Steak.jpeg'),
    Product(name: "Sushi", price: 35000, imagePath: 'image/sushi.jpeg'),
    Product(name: "Cocacola", price: 10000, imagePath: 'image/Cocacola.jpeg'),

  ];

  @override
  Widget build(BuildContext context) {
    int columns = 2;
    int rows = (items.length / columns).ceil();

    return SizedBox(
      height: 500,
      child: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: columns,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color:
                      Colors.black.withOpacity(0.3), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: Offset(0, 3), // Offset to bottom-right
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(25.0))
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0), // Border radius for the image
                  child: Image(
                    image: AssetImage(items[index].imagePath),
                    height: 90,
                    width: 100
                  ),
                ),
                Text(
                  items[index].name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),
                Row(
                  children: [
                    Text("Rp. " + items[index].price.toString()),
                    Spacer(),
                    IconButton(
                      onPressed: (){}, icon: Icon(Icons.add_circle_outlined, color: Colors.green,))
                  ],
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
