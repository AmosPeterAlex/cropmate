import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/core/constants/image_constants.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:cropmate/global_widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.only(top: devHeight * 0.04),
          child: ListView(children: [
            Column(
              children: [
                Container(
                  height: devHeight * .35,
                  width: devWidth * .35,
                  child: Image.asset(ImageConstants.appIcon),
                ),
                ListTile(
                  leading: Text(
                    "Log in",
                    style: TextStyle(
                        color: ColorConstants.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: devHeight * .035),
                  ),
                ),
                TextFieldScreen(hintText: "Name"),
                TextFieldScreen(hintText: "Password"),
                SizedBox(
                  height: devHeight * 0.020,
                ),
                MaterialButtonWidget(
                  buttonText: "Log in",
                  buttonColor: ColorConstants.primaryColor,
                ),
              ],
            ),
          ])),
    );
  }
}
