import 'package:fitu/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fitu/screen_1.dart';
import 'package:fitu/Screen_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: ScreenOne(),
    );
  }
}
