import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';

import '../../../../global_widgets/crop_mate_icon_widget.dart';
import '../../../../global_widgets/matterial_button_widget.dart';
import '../../../../global_widgets/textfield.dart';
void main(){
  runApp(MaterialApp(home:FarmerRegistrationScreen() ,));
}
class FarmerRegistrationScreen extends StatelessWidget {
  const FarmerRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.only(top: devHeight * 0.04),
          child: ListView(children: [
            Column(
              children: [
                CropMateIconWidget(),//refactored widget, stack oke used

                ListTile(
                  title: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: ColorConstants.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: devHeight * .03),
                  ),
                ),
                TextFieldScreen(hintText: "Name"),
                TextFieldScreen(hintText: "Email"),
                TextFieldScreen(hintText: "Phone number"),
                TextFieldScreen(
                  hintText: "Address",
                  maxLines: 3,
                ),
                TextFieldScreen(hintText: "District"),
                TextFieldScreen(hintText: "State"),
                TextFieldScreen(hintText: "Password"),
                TextFieldScreen(hintText: "Confirm Password"),
                SizedBox(
                  height: devHeight * 0.020,
                ),
                MaterialButtonWidget(
                  buttonText: "Register",
                  buttonColor: ColorConstants.primaryColor,
                ),
              ],
            ),
          ])),
    );
  }
}
///Todo text field edit ondu image edit ondu material button edit ondu
