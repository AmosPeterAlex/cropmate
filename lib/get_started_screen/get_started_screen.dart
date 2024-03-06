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
              Container(height: 60,
              width: double.infinity,
              color: Colors.amber,),SizedBox(height: 20,),
              Container(height: 60,
              width: double.infinity,
              color: Colors.amber,),SizedBox(height: 20,),
              Container(height: 60,
              width: double.infinity,
              color: Colors.amber,),SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}