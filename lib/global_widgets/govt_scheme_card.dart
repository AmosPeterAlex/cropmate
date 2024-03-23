import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/presentation/common/govt_scheme_screen/controller/govt_scheme_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GovtSchemeCard extends StatelessWidget {
  final String title;
  final String description;
  final String link;
  final String startAge;
  final String endAge;

  const GovtSchemeCard({
    super.key,
    required this.title,
    required this.description,
    required this.link,
    required this.startAge,
    required this.endAge,
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
                  children: [
                    Text(
                      "Start age- ${startAge}",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: devWidth * 0.02,
                    ),
                    Text(
                      " End Age-${endAge}",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                InkWell(
                  child: Text(
                    link,
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.blue),
                  ),
                  onTap: () {
                    Provider.of<GovtSchemeController>(context, listen: false)
                        .launchURL(link);
                  },
                ),
                Text(
                  description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                //start age and end age add akenm
              ],
            )),
      ),
    );
  }
}
