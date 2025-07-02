import 'package:flutter/material.dart';
import 'package:gymshark_store/components/item_tile.dart';
import 'package:gymshark_store/classes/item.dart';
import 'package:gymshark_store/pages/item_page.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  // List of items in the store
  final List<Item> __itemList = const [
    Item(
      name: 'Lifting essential t-shirt',
      description:
          'Geef je sportieve basics een upgrade met opvallende prints die je overal naartoe kunt dragen.',
      price: 40,
      imagePath: 'assets/images/product1.png',
    ),
    Item(
      name: 'Versatile Seamless Tank',
      description:
          'In deze lichtgewicht, zweetafvoerende en seamless ontwerpen blijft je je hoofd volledig gericht op je workouts.',
      price: 30.40,
      imagePath: 'assets/images/product2.png',
    ),
    Item(
      name: 'Tactical 6" Short',
      description:
          'In deze lichtgewicht, zweetafvoerende en seamless ontwerpen blijft je je hoofd volledig gericht op je workouts.',
      price: 52,
      imagePath: 'assets/images/product3.png',
    ),
    Item(
      name: 'Fit Repeat 6" Shorts',
      description:
          'In deze lichtgewicht, zweetafvoerende en seamless ontwerpen blijft je je hoofd volledig gericht op je workouts.',
      price: 44,
      imagePath: 'assets/images/product4.png',
    ),
    // duplicates
    Item(
      name: 'Lifting essential t-shirt',
      description:
          'Geef je sportieve basics een upgrade met opvallende prints die je overal naartoe kunt dragen.',
      price: 40,
      imagePath: 'assets/images/product1.png',
    ),
    Item(
      name: 'Versatile Seamless Tank',
      description:
          'In deze lichtgewicht, zweetafvoerende en seamless ontwerpen blijft je je hoofd volledig gericht op je workouts.',
      price: 30.40,
      imagePath: 'assets/images/product2.png',
    ),
    Item(
      name: 'Tactical 6" Short',
      description:
          'In deze lichtgewicht, zweetafvoerende en seamless ontwerpen blijft je je hoofd volledig gericht op je workouts.',
      price: 52,
      imagePath: 'assets/images/product3.png',
    ),
    Item(
      name: 'Fit Repeat 6" Shorts',
      description:
          'In deze lichtgewicht, zweetafvoerende en seamless ontwerpen blijft je je hoofd volledig gericht op je workouts.',
      price: 44,
      imagePath: 'assets/images/product4.png',
    ),
  ];

  // Content of the store page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: __itemList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 10,
            childAspectRatio: 0.60,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(item: __itemList[index]),
                  ),
                );
              },
              child: ItemTile(item: __itemList[index]),
            );
          },
        ),
      ),
    );
  }
}
