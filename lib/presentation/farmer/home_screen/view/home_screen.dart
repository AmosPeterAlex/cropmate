import 'package:cropmate/core/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../global_widgets/crop_mate_icon_widget.dart';
import '../../../../global_widgets/item_card.dart';
import '../../../common/product_detail_screen/view/product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text(
        //     'Home',
        //     style: TextStyle(
        //         color: ColorConstants.blackColor, fontWeight: FontWeight.bold),
        //   ),
        // ),
        // body: Center(
        //   child: Text("Home screen"),
        // ),
        appBar: AppBar(
          title: CropMateIconWidget(),
          centerTitle: true,
          toolbarHeight: devHeight * .1,
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(CupertinoIcons.cart_badge_plus))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(devHeight * 0.01),
          child: GridView.builder(
              itemCount: 12,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .58,
                  crossAxisCount: 2,
                  crossAxisSpacing: devHeight * .008,
                  mainAxisSpacing: devWidth * 0.02),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemDetailsScreen())),
                    child: ItemCard());
              }),
        ));
  }
}
