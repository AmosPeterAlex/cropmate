import 'dart:math';

import 'package:cropmate/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class GovtSchemeAdminCard extends StatelessWidget {
  final String title;
  final String description;
  final String link;
  final String startAge;
  final String endAge;
  final VoidCallback delete;

  const GovtSchemeAdminCard({
    super.key,
    required this.title,
    required this.description,
    required this.link,
    required this.startAge,
    required this.endAge,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, bottom: 4),
      child: SizedBox(
        height: devHeight * .25,
        child: Card(
          color: ColorConstants.lightGreenColor,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10),
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        startAge,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        endAge,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  IconButton(onPressed: delete, icon: Icon(Icons.delete))
                ],
              ),
              InkWell(
                child: Text(
                  link,
                  maxLines: 1,
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.blue),
                ),
                onTap: () {
                  //url launcher to be added
                },
              ),
              Text(
                description,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              //start age and end age add akenm
            ],
          ),
        ),
      ),
    );
  }
}
