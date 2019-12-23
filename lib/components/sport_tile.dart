import 'package:flutter/material.dart';


class SportWidget extends StatelessWidget {

  final String name;
  final String image;

  SportWidget({this.name,this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage("images/$image"),
              fit: BoxFit.cover,
            ),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(name,style: TextStyle(color: Colors.white),),
            ),
            Divider(
              indent: 100,
              endIndent: 8,
              color: Colors.white,
              height: 30,
              thickness: 5,
            ),
          ],
        ),
      ),
    );
  }
}
