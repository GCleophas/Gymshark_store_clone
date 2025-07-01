import 'package:flutter/material.dart';
import 'package:gymshark_store/components/bottom_nav_bar.dart';
import 'package:gymshark_store/pages/news_page.dart';
import 'package:gymshark_store/pages/store_page.dart';

class HomePage extends StatefulWidget {
  final int initialIndex;
  const HomePage({super.key, required this.initialIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This variable holds the index of the currently selected bottom navigation item
  late int _selectedIndex;

  // Initializes the state of the widget and sets the initial selected index.
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  // update selected index when a bottom navigation item is tapped
  void onBottomNavBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of pages to display in the body based on the selected index
  List<Widget> get _pages => [
    const NewsPage(),
    const StorePage(),
    const Center(child: Text('Cart Page')),
    const Center(child: Text('Wishlist Page')),
    const Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top title bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image.asset('assets/images/logo_long.png', width: 130),
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(color: Colors.black),
      ),

      // Page content
      body: _pages[_selectedIndex],

      // Bottom navigation bar
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: onBottomNavBarTapped,
      ),
    );
  }
}
