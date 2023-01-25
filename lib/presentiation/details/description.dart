import 'package:flutter/material.dart';

import '../../models/feed_model.dart';
import 'detail_page.dart';

class Description extends StatelessWidget {
  final PostModel? post;
  // final String? description;
  // final String? ratings;

  // const Description({Key? key, this.description, this.ratings})
  const Description({Key? key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          post!.description!,
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[700]),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Text(
                "Ratings: ${post!.time}",
                style: const TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.black),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8, bottom: 50),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(
                                post: post!,
                              )),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue), //<-- SEE HERE

                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: const Text(
                    "See more",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
