import 'package:cropmate/presentation/farmer/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:cropmate/presentation/farmer/bottom_navigation_screen/view/bottom_navigation_screen.dart';
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigationScreen(),
      ),
    );
  }
}
