import 'package:cropmate/core/constants/image_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';

import '../../../../respository/api/cart_page/modal/cart_page_modal.dart';

List<Items> itemList = [
  Items(
      name: "Tomoto",
      image: ImageConstants.appIcon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Tomoto",
      image: ImageConstants.appIcon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Tomoto",
      image: ImageConstants.appIcon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Tomoto",
      image: ImageConstants.appIcon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Tomoto",
      image: ImageConstants.appIcon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Tomoto",
      image: ImageConstants.appIcon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Tomoto",
      image: ImageConstants.appIcon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1)
];

class UserHarvestedItemScreenController extends ChangeNotifier {
  int totalprice = 0;
  int total = 0;

  final List<Items> _item = itemList;

  List<Items> get product => _item;

  final List<Items> _cart = [];

  List<Items> get cart => _cart;
  List<String> categorylist = ["Vegitable", "Fruits", "Grains"];
  String category = "Vegitables";

  onTap({required index}) {
    category = categorylist[index].toLowerCase();
    print(category);
    notifyListeners();
  }

  void addToList(Items productFromCart) {
    if (productFromCart.count != 0) {
      productFromCart.count += 1;
      notifyListeners();
    } else {
      _cart.add(productFromCart);
      productFromCart.count += 1;
      notifyListeners();
    }
  }

  void removeFromList(Items removeProduct) {
    if (removeProduct.count > 1) {
      removeProduct.count -= 1;
      notifyListeners();
    } else {
      _cart.remove(removeProduct);
      notifyListeners();
    }
  }
}
