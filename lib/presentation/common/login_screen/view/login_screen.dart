import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/presentation/admin/admin_login_screen/view/admin_login_screen.dart';
import 'package:cropmate/presentation/common/login_screen/controller/login_screen_controller.dart';
import 'package:cropmate/global_widgets/crop_mate_icon_widget.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:cropmate/global_widgets/textfield.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(actions: [
        PopupMenuButton(
            itemBuilder: ((context) => [
                  PopupMenuItem(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminLoginScreen()));
                      },
                      child: Text('Login as Admin'))
                ]))
      ]),
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
              TextFieldScreen(
                hintText: "Name",
                controller: nameController,
              ),
              TextFieldScreen(
                hintText: "Password",
                controller: passController,
              ),
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
                onPressed: () {
                  Provider.of<LoginScreenController>(context, listen: false)
                      .onLogin(
                          nameController.text, passController.text, context);
                  nameController.clear();
                  passController.clear();
                },
                buttonText: "Log in",
                buttonColor: ColorConstants.primaryColor,
              ),
              Align(
                heightFactor: devHeight * .012,
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
                                    RegistrationScreen()));
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
