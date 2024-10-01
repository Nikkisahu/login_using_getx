import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_using_getx/modules/signin_module/signin_controller.dart';

import 'dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Text("DashBoard"),
              ElevatedButton(
                  onPressed: () {
                    Get.find<SigninController>().getLo();
                  },
                  child: null)
            ],
          ),
        );
      },
    );
  }
}
