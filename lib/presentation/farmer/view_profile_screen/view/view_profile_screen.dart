import 'package:flutter/material.dart';

class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text("View Profile", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),

    );
  }
}
