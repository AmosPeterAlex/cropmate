import 'package:cropmate/core/constants/color_constants.dart';
import 'package:flutter/material.dart';



class PlantDiseasePredictionScreen extends StatelessWidget {
  const PlantDiseasePredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Plant Disease Prediction"),
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(top: devHeight * 0.02),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Add image",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.blackColor),
              ),
            ),
            SizedBox(height: devHeight*0.02,),
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
                      Icon(Icons.camera_alt_outlined, color:  ColorConstants.blackColor),
                      label: Text(
                        'Camera',
                        style: TextStyle(color:  ColorConstants.blackColor),
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
                      icon: Icon(Icons.photo, color:  ColorConstants.blackColor),
                      label: Text('Gallery',
                          style: TextStyle(color:  ColorConstants.blackColor))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
