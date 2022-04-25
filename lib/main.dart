import 'package:flutter/material.dart';
import 'package:picture_group/shared/widgets/home_bottom_nav.dart';

import 'shared/global/global_var.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Picture Group',
      theme: ThemeData(
        primaryColor: const Color(0xff116169),
        primarySwatch: Colors.teal,
      ),
      home: HomeBottomNavigation(pages: pages),
    );
  }
}
