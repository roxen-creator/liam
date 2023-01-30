import 'package:flutter/material.dart';
import 'package:liam/presentiation/home/home_page.dart';
import 'package:liam/presentiation/home/main_page.dart';

import '../blog/create_blog.dart';
import '../sign_in/signin_screen.dart';
import '../sign_up/signup_screen.dart';

class Routes {
  static const String loginScreen = "/LoginFormClass";
  static const String signupScreen = "/SignupPage";
  static const String homeScreen = "/MyHomePage";
  static const String mainScreen = "/MainPage";
  static const String createBlog = "/CreateBlog";
}

class RouteGenerator {
  static Route<dynamic> getRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginFormClass());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignFormClass());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case Routes.createBlog:
        return MaterialPageRoute(builder: (_) => const CreateBlog());
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainPage());
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
