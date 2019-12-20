import 'package:flutter/material.dart';


class SportWidget extends StatelessWidget {

  final String name;
  final String image;

  SportWidget({this.name,this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage:AssetImage(image),
            ),
            SizedBox(height: 20,),
            Text(name),
          ],
        ),
      ),
    );
  }
}
