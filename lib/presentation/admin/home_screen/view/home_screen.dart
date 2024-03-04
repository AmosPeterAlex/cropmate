import 'package:cropmate/core/constants/image_constants.dart';
import 'package:cropmate/global_widgets/admin_widgets/management_grid.dart';
import 'package:cropmate/global_widgets/crop_mate_icon_widget.dart';
import 'package:cropmate/presentation/admin/agr_eqp_management_screen/view/agr_eqp_management_screen.dart';
import 'package:cropmate/presentation/admin/farmer_management_screen/view/farmer_management_screen.dart';
import 'package:cropmate/presentation/admin/govt_scheme_management_screen/view/govt_scheme_management_screen.dart';
import 'package:cropmate/presentation/admin/user_management_screen/view/user_management_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: devWidth * .2,
          title: CropMateIconWidget(),
          centerTitle: true,
          bottom: TabBar(
            physics: BouncingScrollPhysics(),
            labelColor: ColorConstants.primaryColor,
            unselectedLabelColor: ColorConstants.iconColor,
            indicatorColor: ColorConstants.primaryColor,
            overlayColor:
                MaterialStatePropertyAll(ColorConstants.lightGreenColor),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.manage_accounts_outlined,
                ),
                text: 'Management', //blue color matenm
              ),
              Tab(
                icon: Icon(Icons.feedback),
                text: 'FeedBack',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: devHeight * .06,
                ),
                Expanded(
                  child: GridView.count(
                    childAspectRatio: .8,
                    crossAxisCount: 2,
                    children: [
                      ManagementGrid(
                        onGridTapped: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserManagementScreen())),
                        imagePath: ImageConstants.userIcon,
                        title: 'User',
                      ),
                      ManagementGrid(
                        onGridTapped: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FarmerManagementScreen())),
                        imagePath: ImageConstants.farmerIcon,
                        title: 'Farmer',
                      ),
                      ManagementGrid(
                        onGridTapped: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    GovtSchemeManagementScreen())),
                        imagePath: ImageConstants.govtIcon,
                        title: 'Govt Scheme',
                      ),
                      ManagementGrid(
                        onGridTapped: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AgrEqpManagementScreen())),
                        imagePath: ImageConstants.agrEqpIcon,
                        title: 'Agricultural equipment',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Text("Feedback"),
            ),
          ],
        ),
      ),
    );
  }
}
