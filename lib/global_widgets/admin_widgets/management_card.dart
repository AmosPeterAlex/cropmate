import 'package:flutter/material.dart';

class ManagementCard extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final VoidCallback onCardClick;

  const ManagementCard({
    super.key,
    required this.name,
    required this.phoneNumber,
    required this.onCardClick,
  });

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, bottom: 4),
      child: SizedBox(
        height: devHeight * .1,
        child: Card(
          child: ListTile(
            onTap: onCardClick,
            title: Text('Name: $name'),
            subtitle: Text('Ph No: $phoneNumber'),
          ),
        ),
      ),
    );
  }
}
