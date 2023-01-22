import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liam/presentiation/resources/color_manager.dart';
import 'package:liam/presentiation/resources/strings_manager.dart';
import 'package:liam/presentiation/sign_up/componets/sign_up_controller.dart';
import '../resources/assets_manager.dart';
import '../resources/routes_manager.dart';
import '../widget/social_card.dart';

class SignFormClass extends StatefulWidget {
  const SignFormClass({Key? key}) : super(key: key);
  @override
  State<SignFormClass> createState() {
    return SignFormClassState();
  }
}

class SignFormClassState extends State<SignFormClass> {
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNo = TextEditingController();
  final TextEditingController location = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final SignUpController _signUpController = Get.put(SignUpController());
  final SignUpConfirmController _confirmController =
      Get.put(SignUpConfirmController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: double.infinity,
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: SizedBox(
                    child: Icon(
                      Icons.person_rounded,
                      size: 100,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.mode),
                    labelText: AppStrings.userName,
                    hintText: AppStrings.userHint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  controller: username,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.kNameNullError;
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: AppStrings.email,
                    hintText: AppStrings.enterEmail,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  controller: email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.kEmailNullError;
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    labelText: AppStrings.phoneText,
                    hintText: AppStrings.phoneHint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  controller: phoneNo,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.kPhoneNumberNullError;
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.pin_drop),
                    labelText: AppStrings.locationText,
                    hintText: AppStrings.locationHint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  controller: location,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.kAddressNullError;
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => TextFormField(
                    obscureText: _signUpController.isObsecure.value,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        labelText: AppStrings.password,
                        hintText: AppStrings.enterPassword,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_signUpController.isObsecure.value
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            _signUpController.changeObsecure();
                          },
                        )),
                    controller: password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings.kPassNullError;
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(
                  () => TextFormField(
                    obscureText: _confirmController.isPassword.value,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        labelText: "Confirm Password",
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_confirmController.isPassword.value
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            _confirmController.changePassword();
                          },
                        )),
                    controller: confirmPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings.kPassNullError;
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  minWidth: 3.0,
                  color: ColorManager.kButtonColor,
                  child: const Text(
                    AppStrings.signUp,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    //Validate returns true if the form is valid, or false otherwise.

                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world, you'd often call as server or save the infomration in a database.
                      Navigator.pushReplacementNamed(
                          context, Routes.loginScreen);
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: InkWell(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, Routes.loginScreen),
                    child: const SizedBox(
                      child: Text(AppStrings.alreadyMember,
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: ImageAssets.googleIcon,
                    press: () {},
                  ),
                  SocialCard(
                    icon: ImageAssets.faceBookIcon,
                    press: () {},
                  ),
                  SocialCard(
                    icon: ImageAssets.twitterIcon,
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
