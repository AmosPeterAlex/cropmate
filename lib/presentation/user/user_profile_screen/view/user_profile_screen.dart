import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/global_widgets/farmer_widgets/Profile_listtile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../common/govt_scheme_screen/view/govt_scheme_screen.dart';
import '../../../farmer/Update_profile_screen/view/update_profile_screen.dart';

class UserProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: devHeight * 0.03,
          ),
          // Expanded(
          //   child: profilecard(text: text, actions: actions, icon: icon, devHeight: devHeight),
          // ),
          ProfileListTile(
            text: "Update profile",
            icon: Icon(Icons.person),
            onTileClick: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => UpdateProfileScreen())),
          ),
          ProfileListTile(
            text: "Government schemes information",
            icon: Icon(Icons.view_agenda),
            onTileClick: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => GovtSchemeScreen())),
          ),
          // ProfileListTile(
          //   text: "Soil Analysis and Crop Recommendation",
          //   icon: Icon(Icons.view_agenda),
          //   onTileClick: () => Navigator.of(context).push(
          //       MaterialPageRoute(builder: (context) => SoilAnalysisScreen())),
          // ),
          // ProfileListTile(
          //   text: "Feedback",
          //   icon: Icon(Icons.feedback_rounded),
          //   onTileClick: () => Navigator.of(context).push(
          //       MaterialPageRoute(builder: (context) => UpdateProfileScreen())),
          // ),
          ProfileListTile(
              text: "Logout",
              icon: Icon(Icons.logout),
              onTileClick: () => showLogoutBottomSheet(context)),
        ],
      ),
    );
  }

  void showLogoutBottomSheet(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: devWidth * 0.95,
          height: devHeight * 0.3,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Log out",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: devHeight * 0.03,
                      fontWeight: FontWeight.bold)),
              Text('Are you sure you want to Logout',
                  style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the BottomSheet
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        ColorConstants.primaryColor,
                      ),
                    ),
                    child: Text("Cancel",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        ColorConstants.primaryColor,
                      ),
                    ),
                    child: Text("Log out",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}