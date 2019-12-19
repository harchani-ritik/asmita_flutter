import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('The Team')),
        bottom: TabBar(
          labelColor: Colors.black87,
          unselectedLabelColor: Colors.grey,
          tabs: [
              Tab(icon:Icon(Icons.people_outline), text: "Asmita'20 Team"),
              Tab(
                icon:Icon(Icons.developer_mode), text: "App Developers"),
          ],
        ),),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
