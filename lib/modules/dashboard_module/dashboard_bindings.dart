import 'package:get/get.dart';
import 'package:login_using_getx/modules/signin_module/signin_controller.dart';

import 'dashboard_controller.dart';

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<DashboardController>(DashboardController());
    Get.put<SigninController>(SigninController());
  }
}
