import 'package:asmita_flutter/screens/home_screen.dart';
import 'package:asmita_flutter/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asmita\'20',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Webster'
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
