import 'package:get/get.dart';

class SignInController extends GetxController {
  RxBool isObsecure = true.obs;
  changeObsecure() {
    isObsecure.value = !isObsecure.value;
  }
}
