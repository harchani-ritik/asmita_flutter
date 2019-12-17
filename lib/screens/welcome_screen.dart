import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final _firestore = Firestore.instance;

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(milliseconds: 600),
      vsync: this,
    );
    controller.forward();

    controller.addListener((){
      setState(() {
      });
    });

    animation = CurvedAnimation(parent: controller,curve: Curves.linearToEaseOut,);
    animation.addStatusListener((status){
      if(status==AnimationStatus.completed) {
        controller.reverse(from: 1.0);
      }
      else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  void getMessages() async
  {
    final messages = await _firestore.collection('new').getDocuments();
    for(var message in messages.documents)
      {
        print(message.data);
      }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              child: Image(
                image: AssetImage('images/asmita_logo.jpg'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(animation.value*100, 50, 0.0, 0.0),
              child: Text(
                "ASMITA' 20",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontStyle: FontStyle.normal,
                  fontSize: 60.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(animation.value*100,0.0, 0.0, 0.0),
              color: Colors.orange,
              height: 12.0,
              width: 300.0,
            ),
            FlatButton(
              color: Colors.red,
              child: Text('Push something to firestore',
              style: TextStyle(
                fontSize: 18.0,
              ),),
              onPressed: (){
                print('you clicked on pushed button');
                _firestore.collection('new').add({
                  'text': 'YOUNGBLOOD',
                  'sender' : 'HARCHANI',
                });
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text('Pull something from firestore',
                style: TextStyle(
                  fontSize: 18.0,
                ),),
              onPressed: (){
                print('you clicked on pull button');
                getMessages();
              },
            ),

          ],
        ),
      ),
    );
  }
}
