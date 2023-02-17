import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/routes_manager.dart';
import '../resources/strings_manager.dart';
import '../sign_in/components/sign_in_controller.dart';
import 'componets/sign_up_controller.dart';
// import 'package:login/extensions.dart';

class RegisterFormClass extends StatefulWidget {
  const RegisterFormClass({Key? key}) : super(key: key);
  @override
  State<RegisterFormClass> createState() => _RegisterFormClassState();
}

class _RegisterFormClassState extends State<RegisterFormClass> {
  final SignUpController _signUpController = Get.put(SignUpController());
  final SignInController _signInController = Get.put(SignInController());
  // bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Register Page",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Form(
          key: _signUpController.formKey,
          child: ListView(children: [
            const SizedBox(height: 50),
            // logo
            const Icon(
              Icons.account_circle_rounded,
              size: 100,
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _signUpController.username,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Username',
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 25),
                    Obx(
                      () => TextFormField(
                        controller: _signUpController.password,
                        obscureText: _signInController.isObscure.value,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(!_signInController.isObscure.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              _signInController.changeObscure();
                            },
                          ),
                        ),
                        validator: (value) {
                          _signUpController.checkPass = value!;
                          if (value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    Obx(
                      () => TextFormField(
                        controller: _signUpController.confirmPass,
                        obscureText: _signUpController.isObscure.value,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Confirm Password',
                          suffixIcon: IconButton(
                            icon: Icon(!_signUpController.isObscure.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              _signUpController.changeObscure();
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          } else if (_signUpController.checkPass != value) {
                            return "Password not match";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      controller: _signUpController.email,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Email Address',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email address';
                        } else if (!value.isValidEmail()) {
                          return 'Please enter valid email address';
                        }
                        return null;
                      },
                    ),
                  
                    const SizedBox(height: 25),
                   
                    GestureDetector(
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_signUpController.formKey.currentState!
                              .validate()) {
                            _signUpController.mapInputsLogin();
                          }
                          // Navigator.pop(context);
                        },
                        child: const Text('Submit'),
                      ),
                    ),

                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.loginScreen);
                          },
                          child: const SizedBox(
                            child: Text(AppStrings.alreadyMember,
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ))
          ]),
        )));
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
