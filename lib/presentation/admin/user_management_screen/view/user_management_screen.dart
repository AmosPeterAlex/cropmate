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
        // toolbarHeight: 80,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ManagementCard(
          name: 'UserName',
          phoneNumber: '9633780485',
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
