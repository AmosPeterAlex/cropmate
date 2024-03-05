
import 'package:flutter/cupertino.dart';

class UserBottomNavController extends ChangeNotifier {
  int selectedIndex = 0;

  // List<Widget>myPages=[];
  void onTap(index, context) {
    selectedIndex = index;
    notifyListeners();
  }
}