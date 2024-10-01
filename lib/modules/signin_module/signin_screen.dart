import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_using_getx/modules/signin_module/signin_controller.dart';

class SigninScreen extends GetView<SigninController> {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SigninController>(
      init: SigninController(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.usernameController,
              ),
              TextFormField(
                controller: controller.passwordController,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.login();
                  },
                  child: Text("Sigin"),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
