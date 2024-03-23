import 'dart:convert';
import 'dart:io';

import 'package:cropmate/app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../repository/api/admin/agr_eqp_management/service/agr_eqp_management_service.dart';

class AgrEqpAddController extends ChangeNotifier {
  Future<void> onEqpAdd({
    required String eqpName,
    required String price,
    required String quantity,
    required String brand,
    required String isAvail,
    required File? image, // Pass image file
  }) async {
    try {
      // Upload image
      var imageUrl = "${AppConfig.baseUrl}cropmapp/equipmentadd/";
      var response = await onUploadImage(
          imageUrl, image, eqpName, price, quantity, brand, isAvail);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var imageUrlFromServer = json.decode(response.body)["image"];
        var data = {
          "equipment_name": eqpName,
          "price": price,
          "qty": quantity,
          "Brand": brand,
          "is_available": isAvail,
          "image": imageUrlFromServer,
        };

        // Call API to add equipment
        var decodedData = await AgrEqpManagementService.postEqp(data);

        if (decodedData["status"] == 1) {
          // Equipment added successfully
          print("Equipment Added Successfully");
        
        } else {
          // Handle error in API response
          var message = "Error in API";
          print(message);
        }
      } else {
        // Image upload failed
        // Handle error
        print("Image upload failed with status code: ${response.statusCode}");
      }
    } catch (e) {
      // Handle any exceptions
      print("Error occurred: $e");
    }
  }

  Future<http.Response> onUploadImage(
      String url,
      File? selectedImage,
      String eqpName,
      String price,
      String quantity,
      String brand,
      String isAvail) async {
    var request = http.MultipartRequest('POST', Uri.parse(url));
    Map<String, String> headers = {"Content-type": "multipart/form-data"};

    if (selectedImage != null) {
      print("Image file size: ${selectedImage.lengthSync()} bytes <<<<<<<<<<<");
      // var request = http.MultipartRequest('POST', Uri.parse(url));

      // Add image file to the request
      request.files.add(
        await http.MultipartFile.fromPath(
          'image',
          selectedImage.path,
        ),
      );
    }

    request.fields['Brand'] = brand;
    request.fields['eqipment_name'] = eqpName;
      request.fields['price'] = price;
      request.fields['qty'] = quantity;
     
    request.fields['is_available'] = isAvail;

    request.headers.addAll(headers);
    print("request: " + request.toString());
    var res = await request.send();
    return await http.Response.fromStream(res);
  }
}
