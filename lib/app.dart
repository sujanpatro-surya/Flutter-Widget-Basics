import 'package:flutter/material.dart';
import 'screens/homepage/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Blog Structure',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const MyHomePage(),
    );
  }
}
