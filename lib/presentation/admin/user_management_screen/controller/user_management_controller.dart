/*
import 'dart:developer';

import 'package:cropmate/repository/api/admin/user_management/model/user_management_model.dart';
import 'package:cropmate/repository/api/admin/user_management/service/user_management_service.dart';
import 'package:cropmate/repository/api/common/govt_scheme_screen/service/govt_scheme_service.dart';
import 'package:cropmate/repository/helper/api_helper.dart';
import 'package:flutter/material.dart';

class UserManagementController with ChangeNotifier {
  late UserManage userManage;

  bool isLoading = false;

  void getUsers() async {
    isLoading = true;
    notifyListeners();
    try {
      var data = await UserManagementService.getData(endPoint: 'cropmapp/usermanage/');
      userManage = UserManage.fromJson(data);

        } catch (e) {
      log('Error fetching government schemes: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}

 */
import 'dart:developer';

import 'package:cropmate/repository/api/admin/user_management/model/user_management_model.dart';
import 'package:cropmate/repository/api/admin/user_management/service/user_management_service.dart';
import 'package:flutter/material.dart';

class UserManagementController with ChangeNotifier {
  UserManage userManage = UserManage();
  bool isLoading = false;

  fetchUserList() async {
    isLoading = true;
    notifyListeners();
    try {
      var data = await UserManageService.getUserList();
      if (data != null) {
        userManage = UserManage.fromJson(data);
      } else {
        log('Failed to fetch user list');
      }
    } catch (e) {
      log('Error fetching user list $e');
    } finally {
      isLoading = false;
      notifyListeners();
      print('finally working');
    }
  }
}
