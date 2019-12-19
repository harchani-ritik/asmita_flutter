import 'package:flutter/material.dart';

class EventsViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Events",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image(
                    image: AssetImage('images/asmita_cover.jpg'),
                    fit: BoxFit.cover,
                  ),),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Badminton'),
            ),
            ListTile(
              title: Text('Badminton'),
            ),
            ListTile(
              title: Text('Badminton'),
            ),
            ListTile(
              title: Text('Badminton'),
            ),
            ListTile(
              title: Text('Badminton'),
            ),
            ListTile(
              title: Text('Badminton'),
            ),
            ListTile(
              title: Text('Badminton'),
            ),ListTile(
              title: Text('Badminton'),
            ),
            ListTile(
              title: Text('Badminton'),
            ),
            ListTile(
              title: Text('Badminton'),
            ),
            ListTile(
              title: Text('Badminton'),
            ),
          ],
        ),
        ),
      );
  }
}
