import 'package:cropmate/global_widgets/admin_widgets/management_card.dart';
import 'package:flutter/material.dart';

class FarmerManagementScreen extends StatelessWidget {
  const FarmerManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer Management'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ManagementCard(
          name: 'Farmer NAme',
          phoneNumber: '9633780485',
          onCardClick: () {},
        ),
      ),
    );
  }
}
