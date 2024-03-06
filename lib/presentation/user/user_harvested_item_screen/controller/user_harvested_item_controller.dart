import 'package:flutter/cupertino.dart';

class UserHarvestedItemScreenController extends ChangeNotifier {
  List<String> categorylist = [
    "Vegitable",
    "Fruits",
    "Grains"
  ];
  String category = "Vegitables";

  onTap({required index}) {
    category = categorylist[index].toLowerCase();
    print(category);
    notifyListeners();
  }
}