import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool isObsecure = true.obs;

  changeObsecure() {
    isObsecure.value = !isObsecure.value;
  }
}

class SignUpConfirmController extends GetxController {
  RxBool isPassword = true.obs;

  changePassword() {
    isPassword.value = !isPassword.value;
  }
}
