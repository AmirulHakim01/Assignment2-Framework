import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

import 'answer.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  late String _selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Favorite Cat'),
      ),
      body: Column(
        children: <Widget>[
          const Text('What is your Favorite Cat?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              textAlign: TextAlign.center),
          Center(
            //Button Choose BSH
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 10),
              child: const Text(
                'British Short Hair',
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                setState(() {
                  _selectedAnswer = 'British Short Hair';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Answer(answer: _selectedAnswer),
                  ),
                );
              },
            ),
          ),

          //Button choose Mainecoon
          ElevatedButton(
            child: const Text('     Mainecoon      '),
            onPressed: () {
              setState(() {
                _selectedAnswer = 'Mainecoon';
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Answer(answer: _selectedAnswer),
                ),
              );
            },
          ),

          //Button choose Persian
          ElevatedButton(
            child: const Text('        Persian         '),
            onPressed: () {
              setState(() {
                _selectedAnswer = 'Persian';
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Answer(answer: _selectedAnswer),
                ),
              );
            },
          ),

          //Choose Munchkin Button
          ElevatedButton(
            child: const Text('      Munchkin        '),
            onPressed: () {
              setState(() {
                _selectedAnswer = 'Munchkin';
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Answer(answer: _selectedAnswer),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
