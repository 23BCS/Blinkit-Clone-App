import 'package:blinkit/repository/screens/carts/cartScreen.dart';
import 'package:blinkit/repository/screens/category/categoryScreen.dart';
import 'package:blinkit/repository/screens/home/homeScreen.dart';
import 'package:blinkit/repository/screens/print/printScreen.dart';
import 'package:blinkit/repository/widgeets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavscreen extends StatefulWidget {
  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    Categoryscreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "shopping-bag 1.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "category 1.png"),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "printer 1.png"),
            label: "print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
