import 'package:cropmate/presentation/common/view_profile_screen/controller/view_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewProfileScreen extends StatefulWidget {
  const ViewProfileScreen({super.key});

  @override
  State<ViewProfileScreen> createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {
  @override
  void initState() {
    fetchData(context);
    super.initState();
  }

  fetchData(BuildContext context) {
    Provider.of<ViewProfileController>(context, listen: false)
        .fetchProfileData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("View Profile", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Consumer<ViewProfileController>(builder: (context, controller, _) {
        return controller.isLoading==true
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("name  :${controller.profileModel.data?.username}"),
                      Text("Email  :${controller.profileModel.data?.email}"),
                      Text("Phone  :${controller.profileModel.data?.phone}"),
                      Text(
                        "Address  :${controller.profileModel.data?.address}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                          "Location  :${controller.profileModel.data?.location}"),
                    ],
                  ),
                ),
              );
      }),
    );
  }
}
