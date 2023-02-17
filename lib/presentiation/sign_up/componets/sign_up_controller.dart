import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../data/network/api_auth_provider.dart';
import '../../resources/routes_manager.dart';
import '../../../models/token.dart';

class SignUpController extends GetxController {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  late final TextEditingController confirmPass = TextEditingController();
  final ApiAuthProvider apiAuthProvider = ApiAuthProvider();
  String checkPass = "";
  Token? token;
  RxBool isObscure = true.obs;
  changeObscure() {
    isObscure.value = !isObscure.value;
  }

  void registerUser(Map map) async {
    bool? success = await apiAuthProvider.signUp(map);

    if (success!) {
      Fluttertoast.showToast(
          msg: "Check your credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.blue[300],
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Get.offAllNamed(Routes.loginScreen);
    }
  }

  void mapInputsLogin() {
    Map map = {
      "username": username.text,
      "password": password.text,
      "email": email.text
    };
    registerUser(map);
  }
}
