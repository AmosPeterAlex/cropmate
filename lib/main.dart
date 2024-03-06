

import 'package:cropmate/get_started_screen/get_started_screen.dart';
import 'package:cropmate/presentation/admin/home_screen/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetStartedScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
