import 'package:cropmate/presentation/common/login_screen/view/login_screen.dart';
import 'package:cropmate/repository/api/admin/govt_scheme_management/service/govt_scheme_mangement_service.dart';
import 'package:cropmate/repository/api/common/registration_screen/service/registartion_screen_service.dart';
import 'package:flutter/material.dart';

class GovtSchemeManagementController extends ChangeNotifier {
  void onGovtSchemeAdd({
    required String schemeName,
    required int startAge,
    required int endAge,
    required String description,
    required String link,
  }) {
    var data = {
      "scheme_name": schemeName,
      "start_age": startAge.toString(),
      "end_age": endAge.toString(),
      "description": description,
      "link": link,
    };
    GovtSchemeManagementService.postGovtScheme(data).then((decodedData) {
      print("success i.e status ==1");
      if (decodedData["status"] == 1) {
        print("Govt Scheme Added Successfully");
      } else {
        var message = "error in api";
        print(message);
        // AppUtils.oneTimeSnackBar(message, context: context);
      }
    });
  }
}
