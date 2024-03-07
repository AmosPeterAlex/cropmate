import 'package:cropmate/global_widgets/image_icon_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../global_widgets/matterial_button_widget.dart';
import '../../../../global_widgets/textfield.dart';

class AgrEqpManagementScreen extends StatelessWidget {
  const AgrEqpManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Agr Equip Management'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFieldScreen(hintText: 'Equipment Name'),
              TextFieldScreen(hintText: 'Price'),
              TextFieldScreen(hintText: 'Quantity'),
              TextFieldScreen(hintText: 'Brand'),
              Align(
                  child: Text('\tAdd Equipment Image'),
                  alignment: Alignment.bottomLeft),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ImageIconButton(
                      width: devWidth * .35,
                      height: devHeight * .06,
                      onPressed: () {},
                      icon: Icons.camera_alt_outlined,
                      label: 'Camera'),
                  ImageIconButton(
                      width: devWidth * .35,
                      height: devHeight * .06,
                      onPressed: () {},
                      icon: Icons.photo,
                      label: 'Gallery'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButtonWidget(
                  buttonText: 'Add Equipment',
                  onPressed: () {},
                  buttonColor: ColorConstants.primaryColor)
            ],
          ),
        ),
      ),
    );
  }
}
