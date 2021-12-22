import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key, required this.input}) : super(key: key);
  static const String id = "second_page";

  final String input;
  //SecondPage({required this.input});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
            onPressed: () { Navigator.of(context).pop({"data":"Dart 33"}); },
            child: Text(widget.input)),
      ),
    );
  }
}
