/*
import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/core/constants/image_constants.dart';
import 'package:cropmate/global_widgets/crop_mate_icon_widget.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:cropmate/global_widgets/textfield.dart';
import 'package:cropmate/presentation/user/user_registration_screen/view/registration_screen.dart';
import 'package:flutter/material.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(devHeight * .02),
        child: ListView(children: [
          Column(
            children: [
              CropMateIconWidget(), //refactored widget, stack oke used
              ListTile(
                leading: Text(
                  "Log in",
                  style: TextStyle(
                      color: ColorConstants.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: devHeight * .034),
                ),
              ),
              TextFieldScreen(hintText: "Name"),
              TextFieldScreen(hintText: "Password"),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {},
                  child: Text('Forgot Password?',
                      style: TextStyle(
                          fontSize: 16, color: ColorConstants.blackColor)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButtonWidget(
                onPressed: () {},
                buttonText: "Log in",
                buttonColor: ColorConstants.primaryColor,
              ),
              Align(
                heightFactor: devHeight * .014,
                alignment: Alignment.bottomCenter,
                child: RichText(
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
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    UserRegistrationScreen()));
                          },
                          child: Text(
                            '\tCreate Account',
                            style: TextStyle(
                                color: ColorConstants.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: .3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}


 */

import 'package:cropmate/presentation/admin/home_screen/view/home_screen.dart';
import 'package:cropmate/presentation/farmer/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:cropmate/presentation/user/user_bottom_navigation_screen/controller/user_bottom_nav_screen_controller.dart';
import 'package:cropmate/presentation/user/user_bottom_navigation_screen/view/user_bottom_nav_screen.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  child: Text('Admin'),
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserBottomNavScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  child: Text('User'),
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigationScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  child: Text('Farmer'),
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
