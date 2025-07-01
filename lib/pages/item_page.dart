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
      appBar: AppBar(title: const Text('Item')),
      body: const Center(
        child: Text('Item information will be displayed here.'),
      ),
    );
  }
}
