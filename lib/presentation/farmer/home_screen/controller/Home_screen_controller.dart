import 'package:cropmate/core/constants/image_constants.dart';
import 'package:flutter/cupertino.dart';

import '../../../../repository/api/common/cart_page/model/cart_page_modal.dart';

List<Items> itemList = [
  Items(
      name: "Hammer",
      image: ImageConstants.hammericon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Hammer",
      image: ImageConstants.hammericon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Hammer",
      image: ImageConstants.hammericon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Hammer",
      image: ImageConstants.hammericon,
      price: 40,
      description: " hammer",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Hammer",
      image: ImageConstants.hammericon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Hammer",
      image: ImageConstants.hammericon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1),
  Items(
      name: "Hammer",
      image: ImageConstants.hammericon,
      price: 40,
      description: "adipoli tomoto",
      sourceName: "farmer",
      quantity: 1)
];

class HomeScreenController extends ChangeNotifier {
  int totalprice = 0;
  int total = 0;

  final List<Items> _item = itemList;

  List<Items> get product => _item;

  final List<Items> _cart = [];

  List<Items> get cart => _cart;

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
