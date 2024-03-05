import 'package:cropmate/core/constants/color_constants.dart';
import 'package:cropmate/presentation/common/govt_scheme_screen/view/govt_scheme_screen.dart';
import 'package:flutter/material.dart';

import '../../Update_profile_screen/view/update_profile_screen.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    var icon = [
      Icon(Icons.person),
      Icon(Icons.view_agenda),
      Icon(Icons.view_agenda),
      Icon(Icons.feedback_rounded),
      Icon(Icons.logout),
    ];
    var text = [
      "Update profile",
      "Government schemes information",
      "Soil Analysis and Crop Recommendation",
      "Feedback",
      "Logout",
    ];
    var actions = [
          () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UpdateProfileScreen())),
          () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => GovtSchemeScreen())),
          () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UpdateProfileScreen())),
          () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UpdateProfileScreen())),
          () => showLogoutBottomSheet(context),
    ];
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
          Expanded(
            child: Container(
              child: ListView.separated(
                itemCount: text.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: actions[index],
                  leading: icon[index],
                  title: Text(text[index]),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorConstants.primaryColor,
                    ),
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: devHeight * 0.01,
                  );
                },
              ),
            ),
          ),
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
          width: devWidth*0.95,
          height: devHeight*0.3,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Log out",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: devHeight*0.03,
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
                      Navigator.pop(context);// Close the BottomSheet
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
