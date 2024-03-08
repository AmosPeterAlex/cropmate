import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/global_widgets/matterial_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatefulWidget {
  @override
  _ItemDetailsScreenState createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  final String? title;
  final String? description;
  final String? imageUrl;
  final String? contant;
  final String? sourceName;
  int quantity = 1;
  double unitPrice = 10.0; // Replace with your actual unit price

  _ItemDetailsScreenState({
    this.title,
    this.description,
    this.imageUrl,
    this.contant,
    this.sourceName,
  });

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    double totalPrice = unitPrice * quantity;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.cart_badge_plus),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(devHeight * 0.01),
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 40 / 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(devWidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: TextStyle(
                          fontSize: devHeight * 0.04,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: devHeight * 0.03,
                      ),
                    ),
                    Text(
                      "From",
                      style: TextStyle(
                        fontSize: devHeight * 0.02,
                      ),
                    ),
                    Text(
                      "Availability",
                      style: TextStyle(
                        fontSize: devHeight * 0.02,
                      ),
                    ),
                    // TextButton(onPressed: (){}, child: Text("Reviews"))
                    Text(
                      "Price/Quantity",
                      style: TextStyle(
                          fontSize: devHeight * 0.03,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) {
                                quantity--;
                              }
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text(
                          "$quantity",
                          style: TextStyle(
                            fontSize: devHeight * 0.03,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                    Text(
                      "Total Price: ${totalPrice.toStringAsFixed(2)}",
                      // Display total price
                      style: TextStyle(
                        fontSize: devHeight * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: devHeight * 0.03,
                    ),
                    MaterialButtonWidget(
                      onPressed: () {},
                      buttonColor: ColorConstants.primaryColor,
                      buttonText: "Buy now",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
