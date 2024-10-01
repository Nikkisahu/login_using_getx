import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:login_using_getx/routs/app_routs.dart';

class SigninController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  Future<void> login() async {
    final url = Uri.parse(
        "https://lightslategray-bear-191841.hostingersite.com/public/api/login");
    final body = jsonEncode(<String, String>{
      "username": usernameController.text,
      "password": passwordController.text,
    });

    final headers = {
      "accept": "application/json",
      "Content-Type": "application/json",
    };
    try {
      final response = await http.post(
        url,
        body: body,
        headers: headers,
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        Get.toNamed(AppRouts.dashBoard);
        print("responseData..$responseData");
      } else {
        print("error.${response.statusCode}");
      }
    } catch (e) {
      print("e..${e}");
      return null;
    }
  }

  Future<void> getLo() async {
    final url = Uri.parse(
        "https://lightslategray-bear-191841.hostingersite.com/public/api/dashboard");
    // final body = jsonEncode(<String, String>{
    //   "username": usernameController.text,
    //   "password": passwordController.text,
    // });

    const token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMDI4Nzc3Mzg3MjQxZDUxMjQ4OGNlMWJlMDIzMjRlZGQwYWMyYTA0OTc1Nzc4M";
    final headers = {
      "Authorization": "Bearer $token",
      "accept": "application/json",
      "Content-Type": "application/json",
    };
    try {
      final response = await http.get(
        url,
        headers: headers,
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);

        print("responseData..$responseData");
      } else {
        print("error.${response.statusCode}");
      }
    } catch (e) {
      print("e..${e}");
      return;
    }
  }
}
