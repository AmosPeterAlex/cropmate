/*
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
*/
import 'dart:developer';

// import 'package:cropmate/repository/api/common/govt_scheme_screen/service/govt_scheme_service.dart';
import 'package:cropmate/repository/api/farmer/home_screen/model/home_screen_model.dart';
import 'package:cropmate/repository/api/farmer/home_screen/service/home_screen_service.dart';
import 'package:flutter/material.dart';

// import '../../../../repository/api/common/govt_scheme_screen/model/govt_scheme_model.dart';

class FarmerHomeScreenController with ChangeNotifier {
  late EquipmentListModel equipmentListModel;

  bool isLoading = false;

  void fetchEqpList() async {
    isLoading = true;
    notifyListeners();
    try {
      var data = await FarmerHomeScreenService.getEqipList();
      if (data != null) {
        equipmentListModel = EquipmentListModel.fromJson(data);
      } else {
        log('Failed to fetch equipment list');
      }
    } catch (e) {
      log('Error fetching equipment list $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
