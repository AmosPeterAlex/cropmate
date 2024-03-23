import 'package:cropmate/core/app_utils/app_utils.dart';
import 'package:cropmate/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

import '../../../../repository/api/farmer/soil_analysis_screen/service/soil_analysis_service.dart';

class SoilAnalysisController extends ChangeNotifier {
  String? message;

  Future<String?> getSoilReport({
    required BuildContext context,
    required int N,
    required int P,
    required int K,
    required double temp,
    required double humidity,
    required double pH,
    required double rain,
  }) async {
    var data = {
      "N": N.toString(),
      "P": P.toString(),
      "K": K.toString(),
      "temperature": temp.toString(),
      "humidity": humidity.toString(),
      "ph": pH.toString(),
      "rainfall": rain.toString(),
    };
    try {
      var decodedData = await SoilAnalysisService.getSoilAnalysis(data);

      // Check if the status is 1, indicating a successful response
      if (decodedData["status"] == 1) {
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>SoilAnalysisResultScreen(text: decodedData["data"]["The crop suitable for the condition"])));
        // If successful, set the message and display a snackbar with the result
        message = decodedData["data"]["The crop suitable for the condition"];
        AppUtils.oneTimeSnackBar(
            "The crop suitable for the condition:  ${message}",
            context: context,
            time: 5,
            bgColor: ColorConstants.primaryColor);

        return message;
      } else {
        // If the status is not 1, indicating an error response
        var errorMessage = "Error in API";
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            backgroundColor: Colors.red,
          ),
        );
        return errorMessage;
      }
    } catch (e) {
      // Catch any exceptions that occur during the API call
      print("Error: $e");
      return null; // or return some default error message
    }
  }


  // Getter method to access the message value
  String? get soilAnalysisMessage => message;
}
