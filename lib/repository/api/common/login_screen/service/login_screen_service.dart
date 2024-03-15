import 'dart:developer';

import '../../../../helper/api_helper.dart';

class LoginScreenService {
  static Future<dynamic> postGetStartedData(Map<String, dynamic> data) async {
    try {
      var decodedData =
          await ApiHelper.postData(endPoint: "cropmapp/login/", body: data);
      log(decodedData.toString());
      if (decodedData["status"] == 1) {
        log("success");
        return decodedData;
      } else {
        log(decodedData["status"].toString());
        return decodedData;
      }
    } catch (e) {
      log("$e");
    }
  }
}
