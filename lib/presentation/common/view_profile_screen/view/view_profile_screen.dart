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

  fetchData(context) {
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
      body: Consumer<ViewProfileController>(
          builder: (context, controller, child) {
        return Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("name  :name"),
                Text("Email  :name"),
                Text("Phone  :name"),
                Text(
                  "Address  :name",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text("Location  :name"),
              ],
            ),
          ),
        );
      }),
    );
  }
}
