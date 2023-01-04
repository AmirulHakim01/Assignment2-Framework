import 'package:flutter/material.dart';
import 'question.dart';

class Answer extends StatelessWidget {
  final String answer;

  Answer({required this.answer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer Page'),
      ),
      body: Center(
        child: Text('You Favourite cat is $answer'),
      ),
    );
  }
}
