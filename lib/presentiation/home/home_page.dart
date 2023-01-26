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
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/46be2118-138d-4a35-9094-5025fce02fbf/ddvv6rp-082eda72-41c9-489c-9545-aa18121b8def.png/v1/fill/w_1192,h_670,q_70,strp/omen_1440_by_kimdesu_ddvv6rp-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQ0MCIsInBhdGgiOiJcL2ZcLzQ2YmUyMTE4LTEzOGQtNGEzNS05MDk0LTUwMjVmY2UwMmZiZlwvZGR2djZycC0wODJlZGE3Mi00MWM5LTQ4OWMtOTU0NS1hYTE4MTIxYjhkZWYucG5nIiwid2lkdGgiOiI8PTI1NjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.6ho0tIUWsAUNhgDn9C0zCV3au6Ds-ynHpXkC1yaR8kU',
      time: "1hr",
      comments: "23",
      like: '43',
      description:
          "Mujhe ghar jana haiewpfkwepofkwepofkwefopewkfpwoeepsofkefpofkewopfkwepofewkfpwekfwepofkwepofkwepofkwepofkwepofwepofkwepofkwepofkwepofwekp",
    ),
    PostModel(
      name: "Starry Night over The Rhone",
      img:
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0d1da059-601a-4ba0-8d3c-971bced84939/de6kmy5-3d88e6b1-603e-4741-a752-75940fc3cff4.png/v1/fill/w_1192,h_670,q_70,strp/valorant___agents_by_karinscr_de6kmy5-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjE2MCIsInBhdGgiOiJcL2ZcLzBkMWRhMDU5LTYwMWEtNGJhMC04ZDNjLTk3MWJjZWQ4NDkzOVwvZGU2a215NS0zZDg4ZTZiMS02MDNlLTQ3NDEtYTc1Mi03NTk0MGZjM2NmZjQucG5nIiwid2lkdGgiOiI8PTM4NDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.9BThVU3-E9F8Z_ug56lyjBMsCJrV2wXuS89mtWdjwIs',
      time: "1hr",
      comments: "23",
      like: '43',
      description: "Mujhe ghar jana hai",
    ),
    PostModel(
      name: "Starry Night over The Rhone",
      img:
          'https://cdna.artstation.com/p/assets/images/images/058/307/080/large/mateusz-dabrowski-reyna-4k.jpg?1673877831',
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
                        ImageAssets.logoIcon,
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
