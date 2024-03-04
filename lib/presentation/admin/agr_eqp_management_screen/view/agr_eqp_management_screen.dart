import 'package:flutter/material.dart';

import '../../../../global_widgets/textfield.dart';

class AgrEqpManagementScreen extends StatelessWidget {
  const AgrEqpManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agr Equip Management'),
      ), body: Center(
      child: Column(
        children: [
          TextFieldScreen(hintText: 'Equipment Name'),
          TextFieldScreen(hintText: 'Photo',maxLines: 4,),
          TextFieldScreen(hintText: 'Price'),
          TextFieldScreen(hintText: 'Quantity'),
          TextFieldScreen(hintText: 'Brand')
        ],
      ),
    ),
    );
  }
}
