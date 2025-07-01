import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 20,
      unselectedFontSize: 20,
      selectedIconTheme: const IconThemeData(size: 24, color: Colors.black),
      unselectedIconTheme: const IconThemeData(
        size: 24,
        color: Color.fromARGB(255, 153, 153, 153),
      ),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'news'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'store'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'cart'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'wishlist'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}
