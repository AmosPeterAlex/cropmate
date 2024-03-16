import 'package:cropmate/core/app_utils/app_utils.dart';
import 'package:cropmate/presentation/admin/home_screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../repository/api/admin/service/admin_login_service.dart';

class AdminLoginController extends ChangeNotifier {
  void onAdminLogin(String name, String pass, BuildContext context) {
    var data = {"username": name, "password": pass};
    AdminLoginService.postGetStartedData(data).then((decodedData) {
      print("success");
      if (decodedData["status"] == 1) {
        print("login success i.e status == 1 ");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        //from stackoverflow
        Future<bool> setToken(String token) async {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          return prefs.setString("token", token);
        }

        Future<String> getToken() async {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          return prefs.getString("token") ?? '';
        }
      } else {
        var message = "error in api";
        AppUtils.oneTimeSnackBar(message, context: context);
      }
    });
  }
}
