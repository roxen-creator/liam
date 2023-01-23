import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resources/assets_manager.dart';
import '../widget/feed_widget.dart';
import '../widget/satus.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Image.asset(
                        ImageAssets.blog,
                        height: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 15.0),
                      child: Text(
                        'Liam',
                        style: GoogleFonts.lato(
                            color: Colors.grey[900],
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Container(color: Colors.white, height: 120, child: const Status()),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15),
              child: Divider(),
            ),
            const SizedBox(
              height: 10,
            ),
            const FivthFeedUI(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
