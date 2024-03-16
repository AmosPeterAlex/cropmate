import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../app_config/app_config.dart';

class ApiHelper {
  //for get
  static getData({
    required String endPoint,
    Map<String, String>? header,
  }) async {
    log("ApiHelper>getData");
    final url = Uri.parse(AppConfig.baseUrl + endPoint);
    try {
      var response = await http.get(url);
      log("Api Called => status code=${response.statusCode}");
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        log(decodedData.toString());
        var data = {
          "data": decodedData,
          "status": 1,
        };
        return data;
      } else {
        log("Else Condition >> Api failed");
        var data = {
          "data": null,
          "status": 0,
        };
        return data;
      }
    } catch (e) {
      log("$e");
    }
  }

  //for post
  static Future postData(
      {
      //future added
      required String endPoint,
      Map<String, String>? header,
      required Map<String, dynamic> body,
      required finalurl}) async {
    log("Apihelper>postData");
    log("$body");

    final url = Uri.parse(finalurl ?? AppConfig.baseUrl + endPoint);
    // final url = Uri.parse("http://10.11.0.236:8000/cropmapp/register/");
    //code from gpt
    log("Request URL: $url");
    try {
      final response = await http.post(url, body: body);
// After response
      log("Response Status Code: ${response.statusCode}");
      if (response.statusCode == 200) {
        var data = response.body;
        var decodedData = jsonDecode(data);
        log(decodedData["status"].toString());
        return decodedData;
      } else {
        log("Else Condition -> Api failed");
        var data = response.body;
        var decodedData = jsonDecode(data);
        log(decodedData["status"].toString());
        return decodedData;
      }
    } catch (e) {
      var eror = e.toString();
      log("Error: $eror");
    }
  }
}
