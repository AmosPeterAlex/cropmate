import 'dart:async';

import 'package:cropmate/core/constants/image_constants.dart';
import 'package:cropmate/global_widgets/crop_mate_icon_widget.dart';
import 'package:cropmate/presentation/common/login_screen/view/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/constants/color_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: devHeight * 0.7,
              width: devWidth * 0.7,
              child: Image.asset(ImageConstants.appIcon),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: ColorConstants.blackColor,
                    fontSize: 25,
                  ),
                  children: [
                    TextSpan(
                      text: "\tCrop",
                      style: TextStyle(letterSpacing: 0.5),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Text(
                        'Mate',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: ColorConstants.redColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
