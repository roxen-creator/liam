import 'package:flutter/material.dart';
import 'package:liam/presentiation/resources/assets_manager.dart';
import 'package:liam/presentiation/resources/color_manager.dart';
import 'package:liam/presentiation/resources/strings_manager.dart';
import 'package:liam/presentiation/widget/social_card.dart';

import '../resources/routes_manager.dart';
import '../resources/size_config.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  State<SignInScreen> createState() => _LoginFormClassState();
}

class _LoginFormClassState extends State<SignInScreen> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool _isObscure = true;
  String passBackData = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: ColorManager.kSecondaryColor,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  child: Icon(
                    Icons.person_rounded,
                    size: 200,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
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
                obscureText: _isObscure,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    labelText: AppStrings.password,
                    hintText: AppStrings.enterPassword,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: ColorManager.kButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world, you'd oftern call as server aor save the infomration in a database.
                    // Navigator.pushReplacementNamed(context, Routes.FirstScreen);
                  }
                },
                child: const Text(
                  AppStrings.signIn,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: SizedBox(
                  child: Text(AppStrings.forgotPassword,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signupScreen);
                  },
                  child: const SizedBox(
                    child: Text(AppStrings.noAccount,
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
    );
  }
}
