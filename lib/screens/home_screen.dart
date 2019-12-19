import 'package:asmita_flutter/components/events.dart';
import 'package:asmita_flutter/components/team.dart';
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
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Events'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Updates'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Sponsers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Team'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: implement schedule functionality here by navigating to a new screen
        },
        tooltip: 'Open Schedule',
        child: Text('Schedule',style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
        elevation: 3.0,
      ),
    );
  }
}

