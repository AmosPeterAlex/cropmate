import 'package:flutter/material.dart';

class BottomNavigationController extends ChangeNotifier {
  int selectedIndex = 0;

  // List<Widget>myPages=[ const HomeScreen(),const CategoryScreen(),SearchScreen()];
  void onTap(index, context) {
    selectedIndex = index;
    notifyListeners();
  }
}
