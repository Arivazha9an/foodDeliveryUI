import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Profile/profile.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/home/mainpage.dart';

class MainHome2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainHome2> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
   const Mainpage(),
    SearchScreen(),
    NotificationsScreen(),
  const ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action when FAB is pressed
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(Icons.add),
        backgroundColor: red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: white,
        shadowColor: grey,
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildIconButton(CupertinoIcons.home, 0),
            _buildIconButton(CupertinoIcons.heart, 1),
            SizedBox(width: 40), // Space for the FAB
            _buildIconButton(CupertinoIcons.doc, 2),
            _buildIconButton(CupertinoIcons.person, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, int index) {
    bool isSelected = _currentIndex == index;
    Color color = isSelected ? red : black;

    return GestureDetector(
      onTap: () => _onTabTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color),
          if (isSelected)
            Container(
              margin: EdgeInsets.only(top: 4),
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Search Screen'),
    );
  }
}

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Notifications Screen'),
    );
  }
}

