import 'package:cropmate/global_widgets/admin_widgets/management_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../global_widgets/admin_widgets/details_bottom_sheet.dart';

class FarmerManagementScreen extends StatelessWidget {
  const FarmerManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer Management'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ManagementCard(
          name: 'Farmer Name',
          email: '9633780485',
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
