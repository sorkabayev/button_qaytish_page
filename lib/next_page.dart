import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydemo1/second_page.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  static const String id = "next_page";

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  String data = "Go to second page";

  Future _openDetils() async {
    Map results = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context){
          return SecondPage(input: "Flutter 22");
    }
    ));
    if(results != null && results.containsKey("data")){

      setState(() {
        data = results ['data'] ;
      });
    }else{
      print("nothing");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next page"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            _openDetils();
            //Navigator.pushNamed(context, SecondPage.id);
          },
          child: Text(data),
        ),
      ),
    );
  }
}
