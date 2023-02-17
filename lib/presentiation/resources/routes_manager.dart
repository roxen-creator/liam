import 'package:flutter/material.dart';
import 'package:liam/presentiation/home/home_page.dart';
import 'package:liam/presentiation/home/main_page.dart';
import 'package:liam/presentiation/sign_up/sign_up_screen.dart';

import '../blog/create_blog.dart';
import '../sign_in/signin_screen.dart';

class Routes {
  static const String loginScreen = "/LoginFormClass";
  static const String signupScreen = "/RegisterFormClass";
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
        return MaterialPageRoute(builder: (_) => const RegisterFormClass());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomePage());
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
