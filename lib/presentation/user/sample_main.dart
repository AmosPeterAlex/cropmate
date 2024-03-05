
import 'package:cropmate/presentation/user/user_bottom_navigation_screen/controller/user_bottom_nav_screen_controller.dart';
import 'package:cropmate/presentation/user/user_bottom_navigation_screen/view/user_bottom_nav_screen.dart';
import 'package:cropmate/presentation/user/user_profile_screen/view/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MySampleApp());
}

class MySampleApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (BuildContext context)=>UserBottomNavController(),
    child: MaterialApp(home: UserBottomNavScreen(),));
  }
}