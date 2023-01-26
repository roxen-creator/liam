import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  // const ProfileDetails({Key? key}) : super(key: key);
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.grey[700],
              size: 18,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Text(
                    'Profile Details',
                    style: GoogleFonts.lato(
                        color: Colors.grey[800],
                        fontSize: 26,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 13, right: 20, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Edit',
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                height: 180,
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 108,
                        width: 101,
                        margin: const EdgeInsets.only(
                            left: 15.0, right: 15, top: 25, bottom: 5),
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(140)),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://p16-sign-sg.tiktokcdn.com/aweme/720x720/tos-alisg-avt-0068/5f78460b062dddae4f02b6b94bda66f7.jpeg?x-expires=1674806400&x-signature=Te4fbWa%2BYc7UBcnRv0Jj1m7b7Vw%3D',
                          ),
                        )),
                    Positioned(
                      bottom: 54,
                      right: 20, //give the values according to your requirement
                      child: Material(
                          color: Colors.blue[900],
                          elevation: 10,
                          borderRadius: BorderRadius.circular(100),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.zoom_out_map,
                              size: 18,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text(
                    'Name ',
                    style: GoogleFonts.lato(
                        color: Colors.grey[900],
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 37.0),
                  child: Text(
                    'Luna Roulette',
                    style: GoogleFonts.lato(
                        color: Colors.grey[600],
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text(
                    'Role ',
                    style: GoogleFonts.lato(
                        color: Colors.grey[900],
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 37.0),
                  child: Text(
                    '   Social Engineer Of Google',
                    style: GoogleFonts.lato(
                        color: Colors.grey[600],
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text(
                    'Company ',
                    style: GoogleFonts.lato(
                        color: Colors.grey[900],
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    'Google Co Ltd',
                    style: GoogleFonts.lato(
                        color: Colors.grey[600],
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text(
                    'Location ',
                    style: GoogleFonts.lato(
                        color: Colors.grey[900],
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    '  Delhi, India',
                    style: GoogleFonts.lato(
                        color: Colors.grey[600],
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Divider(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Icon(Icons.person),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Private Information',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        fontSize: 17,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 54.0),
                  child: Icon(Icons.mail, color: Colors.grey[500]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'mathewsteven92@gmail.com',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 54.0),
                  child: Icon(Icons.phone, color: Colors.grey[500]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    '+91 - 9560419114',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 54.0),
                  child: Icon(Icons.home_outlined, color: Colors.grey[500]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'RZ- 5167, Hari Nagar, New Delhi',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
