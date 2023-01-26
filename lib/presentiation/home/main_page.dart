import 'package:flutter/material.dart';
import 'package:liam/presentiation/home/home_page.dart';
import '../blog/create_blog.dart';
import '../profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    const ProfileDetails(),
    const CreateBlog(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  // color: Colors.grey[500],
                ),
                label: "",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "",
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: "",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: "",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_important_outlined,
              ),
              label: "",
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          // selectedItemColor: Colors.orange,

          unselectedItemColor: Colors.grey[500],
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          iconSize: 26,
          elevation: 5),
    );
  }
}
