import 'package:flutter/material.dart';

import 'awale_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Awale',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const AwalePage(title: 'Flutter Awale'),
    );
  }
}
