import 'package:asmita_flutter/screens/events.dart';
import 'package:asmita_flutter/screens/team.dart';
import 'package:flutter/material.dart';
import 'package:asmita_flutter/constants.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    EventsViewWidget(),
    Text(
      'Realtime Event Updates will be fetched here',
      style: kOptionStyle.copyWith(fontSize: 15),
    ),
    Text(
      'Sponsers List Coming Soon',
      style: kOptionStyle,
    ),
    TeamPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('Events'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert),
              title: Text('Updates'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wc),
              title: Text('Sponsers'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Team'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

