/*
import 'dart:convert';
import 'package:cropmate/repository/api/admin/user_management/service/user_management_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AdminDataProvider extends ChangeNotifier {
  // late List<dynamic> _data;
  late List<dynamic> _data = [];
  List<dynamic> get data => _data;

  Future<void> fetchData() async {
    try {
      // var response=await ApiService.getData(endPoint: 'cropmapp/usermanage/');
      var response =
          await http.get(Uri.parse("http://10.0.2.2:8000/cropmapp/usermanage/"));
      if (response.statusCode == 200) {
        print('status code 200');
        var decodedData = jsonDecode(response.body);
        if (decodedData["status"] == 1) {
          _data = decodedData['data'];
        } else {
          throw Exception("Error: Status is not 1");
        }
      } else {
        throw Exception("Failed to load data: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
    notifyListeners();
  }
}


 */
import 'package:cropmate/repository/api/admin/user_management/service/user_management_service.dart';
import 'package:flutter/material.dart';


class AdminGetDataController extends StatefulWidget {
  @override
  _AdminGetDataControllerState createState() => _AdminGetDataControllerState();
}

class _AdminGetDataControllerState extends State<AdminGetDataController> {
  late Future<dynamic> _getDataFuture;

  @override
  void initState() {
    super.initState();
    _getDataFuture = ApiService.getData(endPoint: 'cropmapp/usermanage/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Data Display'),
      //   centerTitle: true,
      // ),
      body: FutureBuilder<dynamic>(
        future: _getDataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            String dataAsString = snapshot.data.toString();
            return Center(
              child: Text(dataAsString),
            );
          }
        },
      ),
    );
  }
}
