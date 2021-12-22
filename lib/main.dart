import 'package:flutter/material.dart';
import 'package:mydemo1/home_page.dart';
import 'package:mydemo1/next_page.dart';
import 'package:mydemo1/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        NextPage.id: (context) => const NextPage(),
        SecondPage.id: (context) => SecondPage(input: 'Hello PDP',),
      },

    );
  }
}
