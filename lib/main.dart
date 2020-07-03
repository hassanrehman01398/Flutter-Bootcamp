import 'package:flutter/material.dart';
import 'package:gamify/pages/homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamify',
      theme: ThemeData(
        
      brightness:Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomePage(),
    );
  }
}
