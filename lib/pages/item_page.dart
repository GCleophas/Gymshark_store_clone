import 'package:flutter/material.dart';
import 'package:gymshark_store/classes/item.dart';

class ItemPage extends StatefulWidget {
  final Item item;
  const ItemPage({super.key, required this.item});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  Color? selectedColor;
  String? selectedSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.item.name,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Item image
            Image.asset(widget.item.imagePath),
            SizedBox(height: 30),

            // Item name
            Text(
              widget.item.name,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),

            // Item price
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '€${widget.item.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),

            // Action icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.star, color: Colors.black),
                  onPressed: () {
                    // Go to item reviews
                  },
                ),
                const SizedBox(width: 35),
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.black),
                  onPressed: () {
                    // Add item to wishlist
                  },
                ),
                const SizedBox(width: 35),
                IconButton(
                  icon: const Icon(Icons.ios_share, color: Colors.black),
                  onPressed: () {
                    // Share item link
                  },
                ),
              ],
            ),

            // Item color selection
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Black color button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = Colors.black;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedColor == Colors.black
                              ? Colors.black
                              : Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Orange color button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = Colors.orange[50];
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedColor == Colors.orange[50]
                              ? Colors.black
                              : Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.orange[50],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  // BlueGrey color button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = Colors.blueGrey;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedColor == Colors.blueGrey
                              ? Colors.black
                              : Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blueGrey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Red color button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = Colors.red[200];
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedColor == Colors.red[200]
                              ? Colors.black
                              : Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.red[200],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Item size selection
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('XS', style: TextStyle(fontSize: 14)),
                    Text('S', style: TextStyle(fontSize: 14)),
                    Text('M', style: TextStyle(fontSize: 14)),
                    Text('L', style: TextStyle(fontSize: 14)),
                    Text('XL', style: TextStyle(fontSize: 14)),
                    Text('XXL', style: TextStyle(fontSize: 14)),
                    Text('3XL', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ),

            // Item description
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size.fromHeight(60),
                ),
                onPressed: () {},
                child: const Text(
                  'AAN WINKEL MANDJE TOEVOEGEN',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'BebasNeue',
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 24),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size.fromHeight(60),
                ),
                onPressed: () {},
                child: const Text(
                  'NU KOPEN',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'BebasNeue',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
