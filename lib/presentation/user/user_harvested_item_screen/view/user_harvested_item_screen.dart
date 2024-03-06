import 'package:cropmate/global_widgets/crop_mate_icon_widget.dart';
import 'package:cropmate/global_widgets/item_card.dart';
import 'package:cropmate/presentation/user/user_harvested_item_screen/controller/user_harvested_item_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/color_constants.dart';

class UserHarvestedItemScreen extends StatelessWidget {
  const UserHarvestedItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserHarvestedItemScreenController provider = Provider.of<UserHarvestedItemScreenController>(context);
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: provider.categorylist.length,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(centerTitle: true,
                elevation: 0,
                backgroundColor: ColorConstants.whiteColor,
                titleTextStyle: const TextStyle(
                    color: ColorConstants.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                toolbarHeight: devWidth * .25,
                title: CropMateIconWidget(),
                actions: [Padding(
                  padding: EdgeInsets.all(devHeight*0.01),
                  child: Icon(CupertinoIcons.cart),
                )],
                bottom: TabBar(physics: BouncingScrollPhysics(),tabAlignment: TabAlignment.fill,
                  labelStyle: const TextStyle(
                      color: ColorConstants.primaryColor, fontWeight: FontWeight.w600),
                  labelColor: ColorConstants.blackColor,
                  unselectedLabelColor: ColorConstants.primaryColor,
                  // indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
                  unselectedLabelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)),
                  tabs: List.generate(
                    provider.categorylist.length,
                        (index) => Tab(
                      text: provider.categorylist[index],
                    ),
                  ),
                  onTap: (value) {
                    provider.onTap(index: value);
                  },
                )),
          body: Padding(
            padding:  EdgeInsets.all(devHeight*0.01),
            child: GridView.builder(
                itemCount: 12,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: .65,
                    crossAxisCount: 2,
                    crossAxisSpacing: devHeight *.008,
                    mainAxisSpacing: devWidth * 0.02),
                itemBuilder: (context, index) {
                  return ItemCard();
                }),
          )),
    ));
  }
}
