
import 'package:cropmate/global_widgets/item_card.dart';
import 'package:flutter/material.dart';

class UserHarvestedItemScreen extends StatelessWidget {
  const UserHarvestedItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: GridView.builder(itemCount: 12,shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: .65,
              crossAxisCount: 2,crossAxisSpacing: devWidth*.01,mainAxisSpacing: devWidth*0.01
              ),
          itemBuilder: (context, index) {
            return ItemCard();
          }),
    ));
  }
}
