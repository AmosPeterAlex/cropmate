import 'package:cropmate/core/constants/image_constants.dart';
import 'package:cropmate/global_widgets/crop_mate_icon_widget.dart';
import 'package:cropmate/global_widgets/item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserHarvestedItemScreen extends StatelessWidget {
  const UserHarvestedItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
            padding:  EdgeInsets.all(devHeight*0.01),
            child: GridView.builder(
                itemCount: 12,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: .58,
                    crossAxisCount: 2,
                    crossAxisSpacing: devHeight *.008,
                    mainAxisSpacing: devWidth * 0.02),
                itemBuilder: (context, index) {
                  return ItemCard();
                }),
          )),
    );
  }
}
