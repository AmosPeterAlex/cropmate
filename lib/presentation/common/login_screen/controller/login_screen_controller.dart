import 'package:cropmate/core/app_utils/app_utils.dart';
import 'package:cropmate/repository/api/common/login_screen/service/login_screen_service.dart';
import 'package:flutter/material.dart';

class LoginScreenController extends ChangeNotifier {
  void onLogin(String name, String pass, BuildContext context) {
    var data = {"username": name, "password": pass};
    // LoginScreenService.postGetStartedData(data).then((decodedData) {
    //   print("success");
    //   if (decodedData["status"] == 1) {
    //     print("login success");
    //   } else {
    //     var message = "error in api";
    //     AppUtils.oneTimeSnackBar(message, context: context);
    //   }
    // });
  }
}
