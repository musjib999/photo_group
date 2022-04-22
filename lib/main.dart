import 'package:flutter/material.dart';
import 'package:picture_group/module/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Picture Group',
      theme: ThemeData(
        primaryColor: const Color(0xff116169),
        primarySwatch: Colors.teal,
      ),
      home: const Home(),
    );
  }
}
