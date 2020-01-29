import 'package:asmita_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asmita\'20',
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'NunitoSans'
      ),
      home: HomeScreen(),
    );
  }
}
