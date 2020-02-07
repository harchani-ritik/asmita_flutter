import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double _screenHeight=MediaQuery.of(context).size.height;
    return Card(
      elevation: 4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 8, 0),
                child: Image(
                  height: _screenHeight/672*100,
                  image: AssetImage('images/asmita_neww.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                child: Text(
                  'The Annual Sports Meet\nof IIIT Allahabad',
                  style: TextStyle(fontSize: _screenHeight/672*18 ,),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
              child: Image(
              height: _screenHeight/672*115,
              image: AssetImage('images/soccerr.jpg') ,
            ),),
          ),
        ],
      ),
    );
  }
}
