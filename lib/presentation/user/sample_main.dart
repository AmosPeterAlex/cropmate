
import 'package:cropmate/global_widgets/item_card.dart';
import 'package:cropmate/presentation/user/user_harvested_item_screen/view/user_harvested_item_screen.dart';
import 'package:cropmate/presentation/user/user_registration_screen/view/registration_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MySampleApp());
}

class MySampleApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: UserRegistrationScreen(),);
  }
}