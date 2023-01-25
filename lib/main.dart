import 'package:flutter/material.dart';
import 'presentiation/resources/routes_manager.dart';

// import 'package:liam/presentiation/home/home_page.dart';
// import 'package:liam/presentiation/resources/routes_manager.dart';

// import 'package:liam/presentation/widget/status.dart';
// import 'package:liam/presentation/widget/status_full.dart';
// import 'package:liam/presentation/resources/routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Liam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const DetailPage(),

      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.loginScreen,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Flutter app"),
      ),
    );
  }
}
