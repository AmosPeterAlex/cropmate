import 'dart:convert';
import 'dart:io';

import 'package:cropmate/repository/api/farmer/add_harvested_item/service/add_harvested_item_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../app_config/app_config.dart';

class AddHarvestedItemController extends ChangeNotifier {
  void onAdd(
      {required String createdBy,
      required String cropType,
      required String cropName,
      required double price,
      required int quantity,
      String? description,
      String? isAvailable,
      required File? image}) async {
    //Multipart image to be added
    try {
      // Upload image
      var imageUrl = "${AppConfig.baseUrl}cropmapp/farmerproducts/";
      var response = await onUpload(imageUrl, image, createdBy, cropType,
          cropName, price, quantity, description, isAvailable);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var imageUrlFromServer = json.decode(response.body)["image"];
        var data = {
          "crop_type": cropType,
          "crop_name": cropName,
          "price": price.toString(),
          "quantity": quantity.toString(),
          "description": description,
          "posted_by": createdBy,
          "is_available": isAvailable,
          "image": imageUrlFromServer
        };

        // Call API to add equipment
        var decodedData = await AddHarvestedItemService.postHarvestedData(data);

        if (decodedData["status"] == 1) {
          // Equipment added successfully
          print("Equipment Added Successfully");

          // return decodedData;
        } else {
          // Handle error in API response
          var message = "Error in API";
          print(message);

          // return decodedData;
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

  Future<http.Response> onUpload(
      String url,
      File? selectedImage,
      String createdBy,
      String cropType,
      String cropName,
      double price,
      int quantity,
      String? description,
      String? isAvailable) async {
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

    if (createdBy != null) {
      request.fields['posted_by'] = createdBy;
    }
    if (cropType != null) {
      request.fields['crop_type'] = cropType;
    }
    if (cropName != null) {
      request.fields['crop_name'] = cropName;
    }
    if (price != null) {
      request.fields['price'] = price.toString();
    }
    if (quantity != null) {
      request.fields['quantity'] = quantity.toString();
    }
    if (description != null) {
      request.fields['description'] = description;
    }
    request.fields['is_available'] = isAvailable!;

    request.headers.addAll(headers);
    print("request: " + request.toString());
    var res = await request.send();
    return await http.Response.fromStream(res);
  }
}
