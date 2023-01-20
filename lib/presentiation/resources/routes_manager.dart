
import 'package:flutter/material.dart';

import '../sign_in/signin_screen.dart';
import '../sign_up/signup_screen.dart';
class Routes {
  static const String loginScreen = "/LoginPage";
  static const String signupScreen = "/SignupPage";
}

class RouteGenerator {
  static Route<dynamic> getRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignFormClass());
      
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("no Route found"),
              ),
              body: const Center(child: Text("no route found")),
            ));
  }
}