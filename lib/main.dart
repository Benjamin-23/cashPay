import 'package:flutter/material.dart';

import 'menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happiness Salon',
      theme: ThemeData(
          primaryColor: Colors.lightBlue[800],
          fontFamily: 'Geogia',
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const MyMenu(),
    );
  }
}
