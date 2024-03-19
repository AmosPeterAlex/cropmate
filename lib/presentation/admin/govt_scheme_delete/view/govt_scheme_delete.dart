import 'package:cropmate/global_widgets/admin_widgets/govt_scheme_admin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../global_widgets/govt_scheme_card.dart';
import '../../../common/govt_scheme_screen/controller/govt_scheme_controller.dart';

class GovtSchemeDeleteScreen extends StatelessWidget {
  const GovtSchemeDeleteScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<GovtSchemeController>(context, listen: false);
    controller.fetchGovtSchemes();
    return Scaffold(
      appBar: AppBar(
        title: Text("Govt Scheme's Admin View"),
      ),
      body: Consumer<GovtSchemeController>(
        builder: (context, controller, child) {
          if (controller.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: controller.govtSchemeModel.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return GovtSchemeAdminCard(
                  title: controller.govtSchemeModel.data?[index].schemeName
                          .toString() ??
                      '',
                  description: controller
                          .govtSchemeModel.data?[index].description
                          .toString() ??
                      '',
                  link:
                      controller.govtSchemeModel.data?[index].link.toString() ??
                          '',
                  startAge: controller.govtSchemeModel.data?[index].startAge
                          .toString() ??
                      '',
                  endAge: controller.govtSchemeModel.data?[index].endAge
                          .toString() ??
                      '',
                  delete: () {
                    //delete by id
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
