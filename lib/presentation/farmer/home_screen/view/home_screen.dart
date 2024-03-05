import 'package:cropmate/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(
              color: ColorConstants.blackColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text("Home screen"),
      ),
    );
  }
}
