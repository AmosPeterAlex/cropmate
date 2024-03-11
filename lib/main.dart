

import 'package:cropmate/get_started_screen/get_started_screen.dart';
import 'package:cropmate/presentation/admin/home_screen/view/home_screen.dart';
import 'package:cropmate/presentation/farmer/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:cropmate/presentation/farmer/home_screen/controller/Home_screen_controller.dart';
import 'package:cropmate/presentation/user/user_bottom_navigation_screen/controller/user_bottom_nav_screen_controller.dart';
import 'package:cropmate/presentation/user/user_harvested_item_screen/controller/user_harvested_item_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider(
            create: (context) => BottomNavigationController()),
        ChangeNotifierProvider(create: (context) => UserBottomNavController(),),
        ChangeNotifierProvider(create: (context) => HomeScreenController(),),
        ChangeNotifierProvider(create: (context) => UserHarvestedItemScreenController(),),
        ],
      child: MaterialApp(
        home: GetStartedScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
