import 'package:get/get.dart';
import 'package:login_using_getx/modules/dashboard_module/dashboard_bindings.dart';
import 'package:login_using_getx/modules/dashboard_module/dashboard_screen.dart';
import 'package:login_using_getx/modules/signin_module/signin_bindings.dart';
import 'package:login_using_getx/modules/signin_module/signin_screen.dart';
import 'package:login_using_getx/routs/app_routs.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: AppRouts.login,
      page: () => SigninScreen(),
      binding: SigninBindings(),
    ),
    GetPage(
        name: AppRouts.dashBoard,
        page: () => DashboardScreen(),
        binding: DashboardBindings())
  ];
}
