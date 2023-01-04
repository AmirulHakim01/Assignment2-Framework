import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
primarySwatch: Colors.blue,
),
home: Question(),
);
}
}
