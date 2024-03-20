import 'dart:developer';

import 'package:cropmate/repository/api/farmer/soil_analysis_screen/service/soil_analysis_service.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_utils/app_utils.dart';

class SoilAnalysisController extends ChangeNotifier {
  void getSoilReport(
      {required BuildContext context,
      required int N,
      required int P,
      required int K,
      required double temp,
      required double humidity,
      required double pH,
      required double rain}) {
    var data = {
      "N": N.toString(),
      "P": P.toString(),
      "K": K.toString(),
      "temperature": temp.toString(),
      "humidity": humidity.toString(),
      "ph": pH.toString(),
      "rainfall": rain.toString(),
    };
    SoilAnalysisService.getSoilAnalysis(data).then((decodedData) {
      // print("success i.e status ==1");
      if (decodedData["status"] == 1) {
        // var data=decodedData;
        // var message = data["data"];
        // log(message);
        // AppUtils.oneTimeSnackBar(message,
        //     context: context,
        //     bgColor: Colors.red,
        //     textStyle: TextStyle(color: Colors.white));
        print("Soil Analysis status ==9");
        // AppUtils.oneTimeSnackBar(decodedData["data"], context: context);
      } else {
        log(decodedData.toString());
        var message = "error in api";
        print(message);
      }
    });
  }
}
