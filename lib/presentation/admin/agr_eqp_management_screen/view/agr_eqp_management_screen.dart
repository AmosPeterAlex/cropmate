import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../global_widgets/matterial_button_widget.dart';
import '../../../../global_widgets/textfield.dart';

class AgrEqpManagementScreen extends StatelessWidget {
  const AgrEqpManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agr Equip Management'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldScreen(hintText: 'Equipment Name'),
            // TextFieldScreen(hintText: 'Photo',maxLines: 4,),TODO photo de add akenm
            TextFieldScreen(hintText: 'Price'),
            TextFieldScreen(hintText: 'Quantity'),
            TextFieldScreen(hintText: 'Brand'),
            MaterialButtonWidget(
                buttonText: 'Add Equipment',
                onPressed: () {},
                buttonColor: ColorConstants.primaryColor)
          ],
        ),
      ),
    );
  }
}
