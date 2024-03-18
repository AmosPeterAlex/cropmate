import 'package:cropmate/global_widgets/crop_mate_icon_widget.dart';
import 'package:cropmate/global_widgets/item_card.dart';
import 'package:cropmate/presentation/common/cart_screen/view/cart_screen.dart';
import 'package:cropmate/presentation/common/product_detail_screen/view/product_detail_screen.dart';
import 'package:cropmate/presentation/user/user_harvested_item_screen/controller/user_harvested_item_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/color_constants.dart';

class UserHarvestedItemScreen extends StatelessWidget {
  const UserHarvestedItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserHarvestedItemScreenController provider =
        Provider.of<UserHarvestedItemScreenController>(context);
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: DefaultTabController(
      length: provider.categorylist.length,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: ColorConstants.whiteColor,
              titleTextStyle: const TextStyle(
                  color: ColorConstants.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              toolbarHeight: devWidth * .25,
              title: CropMateIconWidget(),
              actions: [
                Padding(
                  padding: EdgeInsets.all(devHeight * 0.01),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cartScreen()));
                    },
                    icon: Icon(
                      CupertinoIcons.cart,
                    ),
                  ),
                )
              ],
              bottom: TabBar(
                physics: BouncingScrollPhysics(),
                tabAlignment: TabAlignment.fill,
                labelStyle: const TextStyle(
                    color: ColorConstants.primaryColor,
                    fontWeight: FontWeight.w600),
                labelColor: ColorConstants.blackColor,
                unselectedLabelColor: ColorConstants.primaryColor,
                // indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
                unselectedLabelStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
            padding: EdgeInsets.all(devHeight * 0.01),
            child: GridView.builder(
                itemCount: itemList.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: .60,
                    crossAxisCount: 2,
                    crossAxisSpacing: devHeight * .008,
                    mainAxisSpacing: devWidth * 0.02),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemDetailsScreen()));
                      },
                      child: ItemCard(
                        title: itemList[index].name,
                        imageUrl: itemList[index].image,
                        price: itemList[index].price,
                        quantity: itemList[index].quantity!.toInt(),
                        item: itemList[index],
                      ));
                }),
          )),
    ));
  }
}
