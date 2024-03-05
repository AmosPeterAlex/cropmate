import 'package:cropmate/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class GovtSchemeCard extends StatelessWidget {
  final String title;
  final String description;
  final String link;
  final String? startAge;
  final String? endAge;

  const GovtSchemeCard({
    super.key,
    required this.title,
    required this.description,
    required this.link,
    this.startAge,
    this.endAge,
  });

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
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
                InkWell(
                  child: Text(
                    link,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  onTap: () {},
                ),
                Text(description),
                //start age and end age add akenm
              ],
            )),
      ),
    );
  }
}
