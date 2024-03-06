// import 'package:cropmate/core/constants/color_constants.dart';
// import 'package:flutter/material.dart';
//
//
//
// class PlantDiseasePredictionScreen extends StatelessWidget {
//   const PlantDiseasePredictionScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var devHeight = MediaQuery.of(context).size.height;
//     var devWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Plant Disease Prediction"),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         minimum: EdgeInsets.only(top: devHeight * 0.02),
//         child: ListView(
//           children: [
//             ListTile(
//               title: Text(
//                 "Add image",
//                 style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.normal,
//                     color: ColorConstants.blackColor),
//               ),
//             ),
//             SizedBox(height: devHeight*0.02,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 SizedBox(
//                   width: devWidth * 0.35,
//                   height: devHeight * 0.06,
//                   child: ElevatedButton.icon(
//                       style: ButtonStyle(
//                           shape: MaterialStatePropertyAll(
//                               RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10))),
//                           backgroundColor:
//                           MaterialStatePropertyAll(Color(0xFFd6ebdc))),
//                       onPressed: () {},
//                       icon:
//                       Icon(Icons.camera_alt_outlined, color:  ColorConstants.blackColor),
//                       label: Text(
//                         'Camera',
//                         style: TextStyle(color:  ColorConstants.blackColor),
//                       )),
//                 ),
//                 SizedBox(
//                   width: devWidth * 0.35,
//                   height: devHeight * 0.06,
//                   child: ElevatedButton.icon(
//                       style: ButtonStyle(
//                           shape: MaterialStatePropertyAll(
//                               RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10))),
//                           backgroundColor:
//                           MaterialStatePropertyAll(Color(0xFFd6ebdc))),
//                       // onPressed: () =>
//                       //     upload("gallery"),
//                       onPressed: () {},
//                       icon: Icon(Icons.photo, color:  ColorConstants.blackColor),
//                       label: Text('Gallery',
//                           style: TextStyle(color:  ColorConstants.blackColor))),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'dart:io';
//
// import 'package:cropmate/core/constants/color_constants.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class PlantDiseasePredictionScreen extends StatefulWidget {
//   const PlantDiseasePredictionScreen({Key? key}) : super(key: key);
//
//   @override
//   _PlantDiseasePredictionScreenState createState() =>
//       _PlantDiseasePredictionScreenState();
// }
//
// class _PlantDiseasePredictionScreenState
//     extends State<PlantDiseasePredictionScreen> {
//   late ImagePicker _imagePicker;
//   XFile? _selectedImage;
//
//   @override
//   void initState() {
//     super.initState();
//     _imagePicker = ImagePicker();
//   }
//
//   Future<void> _getImageFromCamera() async {
//     final XFile? image =
//     await _imagePicker.pickImage(source: ImageSource.camera);
//     _setImage(image);
//   }
//
//   Future<void> _getImageFromGallery() async {
//     final XFile? image =
//     await _imagePicker.pickImage(source: ImageSource.gallery);
//     _setImage(image);
//   }
//
//   void _setImage(XFile? image) {
//     if (image != null) {
//       setState(() {
//         _selectedImage = image;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var devHeight = MediaQuery.of(context).size.height;
//     var devWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Plant Disease Prediction"),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         minimum: EdgeInsets.only(top: devHeight * 0.02),
//         child: ListView(
//           children: [
//             ListTile(
//               title: Text(
//                 "Add image",
//                 style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.normal,
//                     color: ColorConstants.blackColor),
//               ),
//             ),
//             SizedBox(height: devHeight * 0.02),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 SizedBox(
//                   width: devWidth * 0.35,
//                   height: devHeight * 0.06,
//                   child: ElevatedButton.icon(
//                     style: ButtonStyle(
//                       shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10))),
//                       backgroundColor:
//                       MaterialStateProperty.all(Color(0xFFd6ebdc)),
//                     ),
//                     onPressed: _getImageFromCamera,
//                     icon: Icon(Icons.camera_alt_outlined,
//                         color: ColorConstants.blackColor),
//                     label: Text(
//                       'Camera',
//                       style: TextStyle(color: ColorConstants.blackColor),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: devWidth * 0.35,
//                   height: devHeight * 0.06,
//                   child: ElevatedButton.icon(
//                     style: ButtonStyle(
//                       shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10))),
//                       backgroundColor:
//                       MaterialStateProperty.all(Color(0xFFd6ebdc)),
//                     ),
//                     onPressed: _getImageFromGallery,
//                     icon: Icon(Icons.photo, color: ColorConstants.blackColor),
//                     label: Text('Gallery',
//                         style: TextStyle(color: ColorConstants.blackColor)),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: devHeight * 0.02),
//             if (_selectedImage != null)
//               Padding(
//                 padding: EdgeInsets.all(devWidth * 0.02),
//                 child: Image.file(
//                   File(_selectedImage!.path),
//                   height: devHeight * 0.3,
//                   width: devWidth,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:io';

import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PlantDiseasePredictionScreen extends StatefulWidget {
  const PlantDiseasePredictionScreen({Key? key}) : super(key: key);

  @override
  _PlantDiseasePredictionScreenState createState() =>
      _PlantDiseasePredictionScreenState();
}

class _PlantDiseasePredictionScreenState
    extends State<PlantDiseasePredictionScreen> {
  late ImagePicker _imagePicker;
  XFile? _selectedImage;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _getImageFromCamera() async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.camera);
    _setImage(image);
  }

  Future<void> _getImageFromGallery() async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    _setImage(image);
  }

  void _setImage(XFile? image) {
    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  void _predictDisease() {
    // Add your plant disease prediction logic here
    // You can use the selected image (_selectedImage) for prediction
    // For now, let's just print a message to the console
    print('Performing plant disease prediction...');
    Text("'Performing plant disease prediction...'");
  }

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
            SizedBox(height: devHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: devWidth * 0.35,
                  height: devHeight * 0.06,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFd6ebdc)),
                    ),
                    onPressed: _getImageFromCamera,
                    icon: Icon(Icons.camera_alt_outlined,
                        color: ColorConstants.blackColor),
                    label: Text(
                      'Camera',
                      style: TextStyle(color: ColorConstants.blackColor),
                    ),
                  ),
                ),
                SizedBox(
                  width: devWidth * 0.35,
                  height: devHeight * 0.06,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFd6ebdc)),
                    ),
                    onPressed: _getImageFromGallery,
                    icon: Icon(Icons.photo, color: ColorConstants.blackColor),
                    label: Text('Gallery',
                        style: TextStyle(color: ColorConstants.blackColor)),
                  ),
                ),
              ],
            ),
            SizedBox(height: devHeight * 0.02),
            if (_selectedImage != null)
              Padding(
                padding: EdgeInsets.all(devWidth * 0.02),
                child: Image.file(
                  File(_selectedImage!.path),
                  height: devHeight * 0.3,
                  width: devWidth,
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(height: devHeight * 0.02),
            MaterialButtonWidget(
              onPressed: _predictDisease,
              buttonText: 'Predict Disease',
              buttonColor:
                  ColorConstants.primaryColor, // Set your desired button color
            ),
          ],
        ),
      ),
    );
  }
}
