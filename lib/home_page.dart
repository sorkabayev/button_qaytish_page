import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydemo1/next_page.dart';
import 'package:mydemo1/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"), centerTitle: true),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, NextPage.id);
                },
                child: Text("Go to next page", style: const TextStyle(fontSize: 20))),
          ),
        ],
      ),
    );
  }
}
