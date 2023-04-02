import 'package:flutter/material.dart';
import 'package:nawasena_app/Fragment/Home/Internship.dart';
import 'Home.dart';
import 'Search.dart';
import 'Saved.dart';
import 'Nawacom.dart';
import 'Profile.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentPage = 0 ;
  final List<Widget> screenPages = const[
    Home(),
    Search(),
    Saved(),
    Nawacom(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenPages[currentPage],
      bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Color(0xFF3A3F47),
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Color(0xFF3A3F47),
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.yellow))), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          currentIndex: currentPage,
          onTap: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.all_inclusive_rounded),
              label: 'Nawacom',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Profile',
            ),
          ],
          backgroundColor: const Color(0xFF3A3F47),
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
