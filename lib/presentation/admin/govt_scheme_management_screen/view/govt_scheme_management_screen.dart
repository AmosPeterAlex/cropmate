import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:cropmate/global_widgets/textfield.dart';
import 'package:flutter/material.dart';

class GovtSchemeManagementScreen extends StatelessWidget {
  const GovtSchemeManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Govt Scheme Management'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldScreen(
              hintText: 'Scheme Name',
            ),
            Row(
              children: [
                Expanded(
                    child: TextFieldScreen(
                  hintText: 'Start age',
                  keyBoardType: TextInputType.number,
                )),
                Expanded(
                    child: TextFieldScreen(
                  hintText: 'Stop age',
                  keyBoardType: TextInputType.number,
                )),
              ],
            ),
            TextFieldScreen(hintText: 'Description', maxLines: 5),
            TextFieldScreen(hintText: 'Link'),
            MaterialButtonWidget(
                buttonText: 'Add Scheme',
                onPressed: () {},
                buttonColor: ColorConstants.primaryColor)
          ],
        ),
      ),
    );
  }
}
