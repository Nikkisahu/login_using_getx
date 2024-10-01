import 'package:get/get.dart';
import 'package:login_using_getx/modules/signin_module/signin_controller.dart';

class SigninBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<SigninController>(SigninController());

  }
}
