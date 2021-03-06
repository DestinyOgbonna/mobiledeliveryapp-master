import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mobile Delivery System App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }

}