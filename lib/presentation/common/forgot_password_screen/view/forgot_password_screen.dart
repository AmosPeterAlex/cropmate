import 'package:cropmate/core/app_utils/app_utils.dart';
import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:cropmate/global_widgets/textfield.dart';
import 'package:cropmate/presentation/common/forgot_password_screen/controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  var usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldScreen(
                hintText: "username",
                controller: usernameController,
              ),
              MaterialButtonWidget(
                onPressed: () {
                  Provider.of<ForgotPasswordController>(context,listen: false).onForgot(usernameController.text.trim(), context);
                  usernameController.clear();
                },
                buttonText: "Confirm",
                buttonColor: ColorConstants.primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
