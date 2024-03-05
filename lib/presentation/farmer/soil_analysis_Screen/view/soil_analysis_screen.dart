import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../global_widgets/matterial_button_widget.dart';
import '../../../../global_widgets/textfield.dart';

class SoilAnalysisScreen extends StatelessWidget {
  const SoilAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Soil Analysis and Crop Recommendation"),
        //centerTitle: true,
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(top: devHeight * 0.04),
        child: ListView(
          padding:
              EdgeInsets.only(left: devWidth * 0.02, right: devWidth * 0.02),
          children: [
            TextFieldScreen(hintText: "Nitrogen content"),
            TextFieldScreen(hintText: "Potassium content"),
            TextFieldScreen(hintText: "Phosphorus content"),
            TextFieldScreen(hintText: "Temperature"),
            TextFieldScreen(hintText: "Humidity"),
            TextFieldScreen(
              hintText: "Ph",
            ),
            TextFieldScreen(hintText: "Rainfall"),
            SizedBox(
              height: devHeight * 0.03,
            ),
            MaterialButtonWidget(
              onPressed: () {},
              buttonText: "Check",
              buttonColor: ColorConstants.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
