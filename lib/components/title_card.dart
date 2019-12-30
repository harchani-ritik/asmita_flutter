import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double _screenHeight=MediaQuery.of(context).size.height;

    return Card(
      elevation: 6,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Image(
                  height: _screenHeight/672*80,
                  image: AssetImage('images/asmita_logo_cropped.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                child: Text(
                  'The Annual Sports Meet\nof IIIT Allahabad',
                  style: TextStyle(fontSize: 20 ,),
                ),
              ),
            ],
          ),
          Expanded(
            child: Image(
              height: _screenHeight/672*140,
              image: AssetImage('images/soccer.jpg') ,
            ),
          ),
        ],
      ),
    );
  }
}
