
import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:cropmate/global_widgets/textfield.dart';
import 'package:flutter/material.dart';

class BuyNowScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final int quantity;

  BuyNowScreen({required this.imageUrl, required this.title, required this.price, required this.quantity});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(devWidth * 0.04), // Adjust padding based on width
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: devHeight * 0.3, // Adjust image height based on height
              width: devWidth, // Adjust image width based on width
              fit: BoxFit.cover,
            ),
            SizedBox(height: devHeight * 0.02),
            Text(
              title,
              style: TextStyle(fontSize: devHeight * 0.04, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: devHeight * 0.01),
            Text(
              'Price: \$${price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: devHeight * 0.03),
            ),
            SizedBox(height: devHeight * 0.01),
            Text(
              'Quantity: $quantity',
              style: TextStyle(fontSize: devHeight * 0.03),
            ),
            SizedBox(height: devHeight * 0.02),
            TextFieldScreen(hintText: "Enter your address", maxLines: 3,),
            SizedBox(height: devHeight * 0.02),
            MaterialButtonWidget(
              buttonText: "Order Now",
              onPressed: () {},
              buttonColor: ColorConstants.primaryColor,
              // Adjust button height based on height
            ),
          ],
        ),
      ),
    );
  }
}
