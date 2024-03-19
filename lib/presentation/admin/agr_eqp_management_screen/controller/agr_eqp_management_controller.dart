import 'package:cropmate/repository/api/admin/agr_eqp_management/service/agr_eqp_management_service.dart';
import 'package:flutter/material.dart';

class AgrEqpAddController extends ChangeNotifier {
  void onEqpAdd({
    required String eqpName,
    required String price,
    required String quantity,
    required String brand,
    // required String link,
  }) {
    var data = {
      "equipment_name": eqpName,
      "price": price,
      "qty": quantity,
      "Brand": brand,
      // "link": link,
    };
    AgrEqpManagementService.postEqp(data).then((decodedData) {
      print("success i.e status ==1");
      if (decodedData["status"] == 1) {
        print("Equipment Added Successfully");
      } else {
        var message = "error in api";
        print(message);
        // AppUtils.oneTimeSnackBar(message, context: context);
      }
    });
  }
}
