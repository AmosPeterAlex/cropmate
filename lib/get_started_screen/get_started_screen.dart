import 'package:cropmate/presentation/admin/home_screen/view/home_screen.dart';
import 'package:cropmate/presentation/farmer/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:cropmate/presentation/user/user_bottom_navigation_screen/controller/user_bottom_nav_screen_controller.dart';
import 'package:cropmate/presentation/user/user_bottom_navigation_screen/view/user_bottom_nav_screen.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen() ,),);
                },
                child: Container(height: 60,
                width: double.infinity,
                color: Colors.amber,),
              ),SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>UserBottomNavScreen() ,),);
                },
                child: Container(height: 60,
                width: double.infinity,
                color: Colors.amber,),
              ),SizedBox(height: 20,),
              InkWell(
               onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>BottomNavigationScreen() ,),);
                },
                child: Container(height: 60,
                width: double.infinity,
                color: Colors.amber,),
              ),SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}