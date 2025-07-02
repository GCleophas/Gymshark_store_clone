import 'package:flutter/material.dart';
import 'package:gymshark_store/classes/item.dart';

class ItemPage extends StatefulWidget {
  final Item item;
  const ItemPage({super.key, required this.item});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(widget.item.name)),
      body: Column(
        children: [
          Image.asset(widget.item.imagePath),
          SizedBox(height: 10),
          Text(
            widget.item.name,
            style: const TextStyle(fontFamily: 'BebasNeue Thin', fontSize: 18),
          ),
        ],
      ),
    );
  }
}
