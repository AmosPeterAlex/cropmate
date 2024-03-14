import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/global_widgets/crop_mate_icon_widget.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:cropmate/global_widgets/textfield.dart';
import 'package:flutter/material.dart';

class UserRegistrationScreen extends StatelessWidget {
  const UserRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            CropMateIconWidget(),
            // ListTile(
            //     title: Image.asset(ImageConstants.appIcon)),
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
            TextFieldScreen(hintText: "Password"),
            TextFieldScreen(hintText: "Confirm Password"),
            SizedBox(
              height: devHeight * 0.020,
            ),
            //Add dropdown button here
            Padding(
              padding: EdgeInsets.symmetric(horizontal: devWidth * 0.1),
              // child: DropdownButton(
              //   items: ['User', 'Farmer'].map((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Text(value),
              //     );
              //   }).toList(),
              //   onChanged: (String? newValue) {},
              // ),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  hintText: 'Login as',
                  border: OutlineInputBorder(),
                ),
                items: ['User', 'Farmer'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
            ),
            MaterialButtonWidget(
              onPressed: () {},
              buttonText: "Register",
              buttonColor: ColorConstants.primaryColor,
            ),
          ],
        ),
      ]),
    );
  }
}
