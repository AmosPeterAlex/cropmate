import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:cropmate/global_widgets/textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AddHarvestedItemScreen(),
  ));
}

class AddHarvestedItemScreen extends StatelessWidget {
  const AddHarvestedItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add harvested item"),
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(top: devHeight * 0.04),
        child: ListView(
          padding:
              EdgeInsets.only(left: devWidth * 0.02, right: devWidth * 0.02),
          children: [
            TextFieldScreen(hintText: "Created by"),
            TextFieldScreen(hintText: "Crop type"),
            TextFieldScreen(hintText: "Crop name"),
            ListTile(
              title: Text("Add image"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: devWidth * 0.35,
                  height: devHeight * 0.06,
                  child: ElevatedButton.icon(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFd6ebdc))),
                      onPressed: () {},
                      icon:
                          Icon(Icons.camera_alt_outlined, color: Colors.black),
                      label: Text(
                        'Camera',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                SizedBox(
                  width: devWidth * 0.35,
                  height: devHeight * 0.06,
                  child: ElevatedButton.icon(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFd6ebdc))),
                      // onPressed: () =>
                      //     upload("gallery"),
                      onPressed: () {},
                      icon: Icon(Icons.photo, color: Colors.black),
                      label: Text('Gallery',
                          style: TextStyle(color: Colors.black))),
                ),
              ],
            ),
            TextFieldScreen(hintText: "Price"),
            TextFieldScreen(hintText: "Quantity"),
            TextFieldScreen(
              hintText: "Description",
            ),
            TextFieldScreen(hintText: "Is available"),
            MaterialButtonWidget(
              buttonText: "Add",
              buttonColor: ColorConstants.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
/*
/// Todo
material button modification, textfield modification
image add akumbol ulla space




 */
