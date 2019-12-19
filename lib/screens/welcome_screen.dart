import 'package:asmita_flutter/screens/home_screen.dart';
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
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );
    controller.forward();
    controller.addListener((){
      setState(() {
      });
//      print('Controller Value = ${controller.value}');
//      print('Animation Value = ${animation.value}');
    });
    animation = CurvedAnimation(parent: controller,curve: Curves.decelerate,);

    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushNamed(context, HomeScreen.id);
    });
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(16.0,animation.value*176,16.0,0),
              child: CircleAvatar(
                radius: 80,
                child: Image(
                  image: AssetImage('images/asmita_logo.jpg'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),
              child: Center(
                child: Text(
                  '\t\t\t\t\t Asmita \n14th-16th FEB',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
