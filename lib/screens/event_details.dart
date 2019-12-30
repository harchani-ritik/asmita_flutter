import 'package:flutter/material.dart';
import '../constants.dart';

class EventDetails extends StatelessWidget {

  final int eventIndex;

  EventDetails(this.eventIndex);

  @override
  Widget build(BuildContext context) {
    String eventName=sportsList[eventIndex].name;

    return Container(
      height: MediaQuery.of(context).size.height*0.70,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,//removes back button from appBar
            title: Center(child: Text(eventName)),
            bottom: TabBar(
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Fixtures"),
                Tab(text: "Result"),
                Tab(text: "Organisers"),
              ],
            ),),
          body: TabBarView(
            children: [
              Text('Fixture pdf here'),
              Text('Result pdf here'),
              Text('Organisers List here'),
            ],
          ),
        ),
      ),
    );
  }
}
