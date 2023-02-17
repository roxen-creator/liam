
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liam/presentiation/resources/assets_manager.dart';

import '../resources/color_manager.dart';
import '../widget/satus.dart';

 

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, top: 2),
                  child: Image.asset(
                    ImageAssets.logoIcon,
                    height: 33,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 15.0),
                  child: Text(
                    'BlogBuddies',
                    style: GoogleFonts.lato(
                        color: ColorManager.kTextColor,
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Status(),
           
          ],
        ),
      ),
    );
  }
}