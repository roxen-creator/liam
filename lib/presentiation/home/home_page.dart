import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/feed_model.dart';
import '../resources/assets_manager.dart';
import '../widget/feed_widget.dart';
import '../widget/satus.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<PostModel> posts = [
    PostModel(
      name: "Starry Night over The Rhone",
      img:
          'https://smarthistory.org/wp-content/uploads/2021/12/1280px-Vincent_van_Gogh_-_Starry_Night_-_Google_Art_Project-870x672.jpeg',
      time: "1hr",
      comments: "23",
      like: '43',
      description: "Mujhe ghar jana hai",
    ),
    PostModel(
      name: "Starry Night over The Rhone",
      img:
          'https://smarthistory.org/wp-content/uploads/2021/12/1280px-Vincent_van_Gogh_-_Starry_Night_-_Google_Art_Project-870x672.jpeg',
      time: "1hr",
      comments: "23",
      like: '43',
      description: "Mujhe ghar jana hai",
    ),
  ];

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

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) => FeedUI(
                        post: posts[index],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
