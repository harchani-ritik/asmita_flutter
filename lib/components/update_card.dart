import 'package:flutter/material.dart';

class UpdateCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Related Event',style: TextStyle(fontSize: 20),),
                Text('14th Feb 15:30 ',style: TextStyle(fontSize: 12))
              ],
            ),
            Divider(height: 20,color: Colors.black,),
            Text('Event is going to start in two minutes',style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}