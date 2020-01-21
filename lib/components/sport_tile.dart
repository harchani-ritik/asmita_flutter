import 'package:flutter/material.dart';

class SportWidget extends StatelessWidget {
  final String name;
  final String image;

  SportWidget({this.name, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12, 0, 12, 24),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color.fromRGBO(0, 0, 0, 1),
          image: DecorationImage(
            image: AssetImage("images/$image"),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.3, 1],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.

              Colors.black,
              Colors.black87,
              //   Colors.black54
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                name,
                style: TextStyle(color: Colors.white),
              ),
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
