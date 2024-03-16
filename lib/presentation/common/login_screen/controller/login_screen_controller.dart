import 'dart:convert'; // Required for JSON decoding
import 'package:cropmate/presentation/common/login_screen/view/login_screen.dart';
import 'package:cropmate/presentation/farmer/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:cropmate/presentation/user/user_bottom_navigation_screen/view/user_bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/app_utils/app_utils.dart';
import '../../../../repository/api/common/login_screen/service/login_screen_service.dart';

class LoginScreenController extends ChangeNotifier {
  // Function to handle user login
  Future<void> onLogin(String name, String pass, BuildContext context) async {
    var data = {"username": name, "password": pass};

    try {
      // Make the API call to get login data
      var decodedData = await LoginScreenService.postGetStartedData(data);

      // Save decodedData and token to SharedPreferences
      await saveDataToPrefs(decodedData);

      // Extract user_type from decodedData
      String userType = decodedData['data']['user_type'];

      // Navigate based on user_type
      if (userType.toLowerCase() == 'user') {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => UserBottomNavScreen()));
      } else if (userType.toLowerCase() == 'farmer') {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
      } else {
        // Handle unknown user type
        var message = "Unknown user type";
        AppUtils.oneTimeSnackBar(message, context: context);
      }
    } catch (e) {
      // Handle API call errors
      var message = "Error in API";
      AppUtils.oneTimeSnackBar(message, context: context);
    }
  }

  // Function to save decodedData and token to SharedPreferences
  Future<void> saveDataToPrefs(Map<String, dynamic> decodedData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('decodedData', jsonEncode(decodedData));
    await prefs.setString('token', decodedData['token']);
  }

  // Function to clear token from SharedPreferences (Logout)
  Future<void> logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('decodedData');
    await prefs.remove('token');
    print(prefs.toString());
    // Navigate to login screen (Assuming you have a login screen as the root)
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (route) => false,
    );
  }
}

/*
import 'dart:convert'; // Required for JSON decoding
import 'package:cropmate/presentation/farmer/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:cropmate/presentation/user/user_bottom_navigation_screen/view/user_bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/app_utils/app_utils.dart';
import '../../../../repository/api/common/login_screen/service/login_screen_service.dart';


class LoginScreenController extends ChangeNotifier {
  Future<void> onLogin(String name, String pass, BuildContext context) async {
    var data = {"username": name, "password": pass};

    try {
      // Make the API call to get login data
      var decodedData = await LoginScreenService.postGetStartedData(data);

      // Store the decodedData in shared preferences
      await saveDecodedDataToPrefs(decodedData);

      // Extract user_type from decodedData
      String userType = decodedData['data']['user_type'];

      // Navigate based on user_type
      if (userType.toLowerCase() == 'user') {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserBottomNavScreen()));
      } else if (userType.toLowerCase() == 'farmer') {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
      } else {
        // Handle unknown user type
        var message = "Unknown user type";
        AppUtils.oneTimeSnackBar(message, context: context);
      }
    } catch (e) {
      // Handle API call errors
      var message = "Error in API";
      AppUtils.oneTimeSnackBar(message, context: context);
    }
  }

  // Function to save decodedData to SharedPreferences
  Future<void> saveDecodedDataToPrefs(Map<String, dynamic> decodedData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('decodedData', jsonEncode(decodedData));
  }
}


 */
/*
import 'dart:developer';

import 'package:cropmate/core/app_utils/app_utils.dart';
import 'package:cropmate/repository/api/common/login_screen/service/login_screen_service.dart';
import 'package:flutter/material.dart';

class LoginScreenController extends ChangeNotifier {
  void onLogin(String name, String pass, BuildContext context) {
    var data = {"username": name, "password": pass};
    LoginScreenService.postGetStartedData(data).then((decodedData) {
      print("success2");
      if (decodedData["status"] == 1) {
        print("login success 3");
      } else {
        var message = "error in api";
        AppUtils.oneTimeSnackBar(message, context: context);
      }
    });
  }
}


 */
