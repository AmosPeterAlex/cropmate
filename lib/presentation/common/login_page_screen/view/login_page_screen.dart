import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/core/constants/image_constants.dart';
import 'package:cropmate/global_widgets/crop_mate_icon_widget.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:cropmate/global_widgets/textfield.dart';
import 'package:flutter/material.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.only(top: devHeight * 0.01),
          child: Padding(
            padding: EdgeInsets.all(devHeight * .02),
            child: Column(
              //Listview deleted-thought it was not necessary
              children: [
                CropMateIconWidget(),//refactored widget, stack oke used
                ListTile(
                  leading: Text(
                    "Log in",
                    style: TextStyle(
                        color: ColorConstants.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: devHeight * .032),
                  ),
                ),
                TextFieldScreen(hintText: "Name"),
                TextFieldScreen(hintText: "Password"),
                ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  trailing: InkWell(
                    onTap: () {},
                    child: Text('Forgot Password?',
                        style: TextStyle(
                            fontSize: 16, color: ColorConstants.blackColor)),
                  ),
                ),
                MaterialButtonWidget(
                  buttonText: "Log in",
                  buttonColor: ColorConstants.primaryColor,
                ),
                SizedBox(
                  height: devHeight * .02,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: ColorConstants.blackColor, fontSize: 16),
                    children: [
                      TextSpan(
                        text: "Don't Have an Account?\t",
                        style: TextStyle(letterSpacing: .5),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Text(
                          '\tCreate Account',
                          style: TextStyle(
                              color: ColorConstants.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .3),
                        ),
                      ),
                    ],
                  ),
                ),
                //TODO anuvind materialbutton widget add akiy karinnj edit akam
                Text(
                  'Create Account as Farmer',
                  style:
                      TextStyle(color: ColorConstants.blackColor, fontSize: 16),
                ),
                SizedBox(
                  height: devHeight * .002,
                ),
                Text(
                  'Create Account as User',
                  style:
                      TextStyle(color: ColorConstants.blackColor, fontSize: 16),
                ),
              ],
            ),
          )),
    );
  }
}
