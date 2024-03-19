import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../global_widgets/admin_widgets/details_bottom_sheet.dart';
import '../../../../global_widgets/admin_widgets/management_card.dart';
import '../controller/user_management_controller.dart';

class UserManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Management'),
        centerTitle: true,
      ),
      body:AdminGetDataController()
      // Consumer<AdminDataProvider>(
      //   builder: (context, dataProvider, _) {
      //     if (dataProvider.data.isEmpty) {
      //       print(dataProvider.toString());
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     } else {
      //       return ListView.builder(
      //         itemCount: dataProvider.data.length,
      //         itemBuilder: (context, index) {
      //           var userData = dataProvider.data[index];
      //           return ManagementCard(
      //             name: userData['name'],
      //             email: userData['email'],
      //             onCardClick: () {
      //               showModalBottomSheet(
      //                 backgroundColor: ColorConstants.lightGreenColor,
      //                 context: context,
      //                 builder: (BuildContext context) {
      //                   return DetailsBottomSheet(
      //                     name: userData['name'],
      //                     phoneNumber: userData['phoneNumber'],
      //                     location: userData['location'],
      //                     email: userData['email'],
      //                     address: userData['address'],
      //                   );
      //                 },
      //               );
      //             },
      //           );
      //         },
      //       );
      //     }
      //   },
      // ),
    );
  }
}

/*
my ui static backup
import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/global_widgets/admin_widgets/management_card.dart';
import 'package:flutter/material.dart';

import '../../../../global_widgets/admin_widgets/details_bottom_sheet.dart';

class UserManagementScreen extends StatelessWidget {
  const UserManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Management'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ManagementCard(
          name: 'UserName',
          email: 'user@gmail.com',
          onCardClick: () {
            showModalBottomSheet(
                backgroundColor: ColorConstants.lightGreenColor,
                context: context,
                builder: (BuildContext context) {
                  return DetailsBottomSheet(
                    name: '',
                    phoneNumber: '',
                    location: '',
                    email: '',
                    address: '',
                  );
                });
          },
        ),
      ),
    );
  }
}


 */
