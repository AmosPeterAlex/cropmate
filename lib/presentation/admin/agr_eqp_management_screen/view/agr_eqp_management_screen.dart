import 'package:cropmate/global_widgets/image_icon_button.dart';
import 'package:cropmate/presentation/admin/agr_eqp_management_screen/controller/agr_eqp_management_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../global_widgets/matterial_button_widget.dart';
import '../../../../global_widgets/textfield.dart';

class AgrEqpManagementScreen extends StatelessWidget {
  // const AgrEqpManagementScreen({super.key});
  var equipmentNameController = TextEditingController();
  var priceController = TextEditingController();
  var qtyController = TextEditingController();
  var brandController = TextEditingController();

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
              TextFieldScreen(
                hintText: 'Equipment Name',
                controller: equipmentNameController,
              ),
              TextFieldScreen(
                hintText: 'Price',
                controller: priceController,
              ),
              TextFieldScreen(
                hintText: 'Quantity',
                controller: qtyController,
              ),
              TextFieldScreen(
                hintText: 'Brand',
                controller: brandController,
              ),
              Align(
                  child: Text(
                    '\tAdd Equipment Image',
                    style: TextStyle(fontSize: 16),
                  ),
                  alignment: Alignment.bottomLeft),
              SizedBox(
                height: 10,
              ),
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
                height: 15,
              ),
              MaterialButtonWidget(
                  buttonText: 'Add Equipment',
                  onPressed: () {
                    Provider.of<AgrEqpAddController>(context, listen: false)
                        .onEqpAdd(
                            eqpName: equipmentNameController.text,
                            price: priceController.text,
                            quantity: qtyController.text,
                            brand: brandController.text);
                    equipmentNameController.clear();
                    priceController.clear();
                    qtyController.clear();
                    brandController.clear();
                  },
                  buttonColor: ColorConstants.primaryColor),
            ],
          ),
        ),
      ),
    );
  }
}
