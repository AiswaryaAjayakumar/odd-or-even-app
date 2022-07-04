import 'package:even_odd/screens/evenorodd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(EvenOdd());
}
class EvenOdd extends StatelessWidget {
  const EvenOdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("CHECKING APP"),
        ),
        body: Check(),
      ),
    );
  }
}
