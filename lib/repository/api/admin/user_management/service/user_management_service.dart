/*
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class AdminGetDataService {
  static Future<dynamic> getData() async {
    try {
      var response = await http
          .get(Uri.parse("http://10.0.2.2:8000/cropmapp/usermanage/"));
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        if (decodedData["status"] == 1) {
          log(decodedData.toString());
          return decodedData;
        } else {
          throw Exception("Error: Status is not 1");
        }
      } else {
        throw Exception("Failed to load data: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}


 */

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../../../../../app_config/app_config.dart';

class ApiService {
  static Future<Map<String, dynamic>> getData({
    required String endPoint,
    Map<String, String>? headers,
  }) async {
    final url = Uri.parse(AppConfig.baseUrl + endPoint);

    try {
      final response = await http.get(url, headers: headers);

      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body);

        return {
          "data": decodedData,
          "status": 1,
        };
      } else {
        final decodeData=jsonDecode(response.body);
        print(decodeData.toString());
        return {
          "data": null,
          "status": 0,
        };
      }
    } catch (e) {
      // Handle exceptions
      return {
        "data": null,
        "status": 0,
      };
    }
  }
}



