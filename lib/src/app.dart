import 'package:flutter/material.dart';
import 'package:componentes5a/src/pages/home_temp.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      home: HomePageTemp(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        // Define the default font family.
        fontFamily: 'Georgia',
      ),
    );
  }
}
