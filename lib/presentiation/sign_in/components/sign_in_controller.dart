import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:liam/data/network/api_auth_provider.dart';

import '../../../models/token.dart';

import '../../resources/routes_manager.dart';

class SignInController extends GetxController {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final ApiAuthProvider apiAuthProvider = ApiAuthProvider();
  Token? token;
  RxBool isObscure = true.obs;

  changeObscure() {
    isObscure.value = !isObscure.value;
  }

  void loginUser(Map map) async {
    token = await apiAuthProvider.login(map);

    if (token == null) {
      Fluttertoast.showToast(
          msg: "Check your credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.blue[300],
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      log("access token ${token!.username}");

      Get.offAllNamed(Routes.mainScreen);
    }
  }

  void mapInputsLogin() {
    Map map = {"username": username.text, "password": password.text};
    loginUser(map);
  }
}