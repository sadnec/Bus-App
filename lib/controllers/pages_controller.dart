import 'package:quotes/pages/history.dart';
import 'package:quotes/pages/home_screen.dart';
import 'package:quotes/pages/trips/trips_page.dart';
import 'package:quotes/utils/consts.dart';
import 'package:flutter/material.dart';

class PagesController extends StatefulWidget {
  @override
  _PagesControllerState createState() => _PagesControllerState();
}

class _PagesControllerState extends State<PagesController> {
  PageController _pageController = PageController(initialPage: 0);
  int bottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          MyHomePage(title: 'Way Finder'),
          TripsPage(),
          MyScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
            )
          ],
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: veppoBlue,
          unselectedItemColor: veppoLightGrey,
          currentIndex: bottomNavigationIndex,
          onTap: (index) {
            setState(() {
              _pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 400),
                curve: Curves.decelerate,
              );
              bottomNavigationIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'Booking',
              icon: Icon(Icons.search_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Trips History',
              icon: Icon(Icons.menu),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.supervised_user_circle_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
