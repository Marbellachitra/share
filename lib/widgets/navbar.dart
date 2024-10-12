import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  Navbar({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Halaman Utama',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          label: 'Bantuan',
        ),
      ],
    );
  }
}
