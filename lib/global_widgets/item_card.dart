import 'package:cropmate/core/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    this.title,
    this.description,
    this.imageUrl,
    this.contant,
    this.sourceName,
  });

  final String? title;
  final String? description;
  final String? imageUrl;
  final String? contant;
  final String? sourceName;

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.lightGreenColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: devHeight * 0.2,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //     image: NetworkImage(""), fit: BoxFit.cover)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  "title",
                  style: TextStyle(
                      fontSize: devHeight * 0.02, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Price/"),
                  Text(
                    "Quantity",
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Text(
                  "from",
                ),
              scrollDirection: Axis.horizontal,),
              MaterialButton(
                color: ColorConstants.primaryColor,
                onPressed: () {},
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(color: ColorConstants.whiteColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
