import 'dart:developer';

import 'package:cropmate/repository/api/common/govt_scheme_screen/service/govt_scheme_service';
import 'package:flutter/material.dart';

import '../../../../repository/api/common/govt_scheme_screen/model/govt_scheme_model.dart';

class GovtSchemeController with ChangeNotifier {
  late GovtSchemeModel govtSchemeModel;

  bool isLoading = false;

  void fetchGovtSchemes() async {
    isLoading = true;
    notifyListeners();
    try {
      var data = await GovtSchemeService.getGovtSchemes();
      if (data != null) {
        govtSchemeModel = GovtSchemeModel.fromJson(data);
        
      } else {
        log('Failed to fetch government schemes');
      }
    } catch (e) {
      log('Error fetching government schemes: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
