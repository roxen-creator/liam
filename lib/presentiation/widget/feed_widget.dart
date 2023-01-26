import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/feed_model.dart';
import '../details/detail_page.dart';

class FeedUI extends StatelessWidget {
  final PostModel? post;
  const FeedUI({super.key, this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 69, 22, 22),
                      borderRadius: BorderRadius.circular(140)),
                  height: 58,
                  width: 60,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 74,
                          margin: const EdgeInsets.only(
                              left: 0, right: 0, top: 0, bottom: 0),
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(
                            post!.img ?? '',
                          ))),
                    ],
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 13),
                child: Text(
                  post!.name ?? 'Sound Byte',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  post!.time ?? '1 hr',
                  style: GoogleFonts.lato(
                      color: Colors.grey[500],
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(
                          post: post!,
                        )),
              );
            },
            child: Text(
              post!.description ?? '',
              style: GoogleFonts.lato(
                  color: Colors.grey[600],
                  fontSize: 15,
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.justify,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, top: 15),
          child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              elevation: 6,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.network(post!.img ?? ''),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 28.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Image.asset(
                      'assets/icons/like.png',
                      height: 30,
                    ),
                  ),
                  Text(
                    post!.like ?? '45',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[700],
                        fontSize: 22,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, right: 22.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/2939/2939460.png',
                      height: 30,
                    ),
                  ),
                  Text(
                    post!.comments ?? '45',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[700],
                        fontSize: 22,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
