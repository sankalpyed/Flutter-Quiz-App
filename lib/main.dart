import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  return runApp(myApp());
}

class myApp extends StatefulWidget {
  // const myApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<myApp> {
  int index = 0;
  int totalScore = 0;
  var questions = [
    {
      'questionText': 'What is your favorite color?',
      'answerText': [
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 9},
        {'text': 'Black', 'score': 7},
        {'text': 'Blue', 'score': 10}
      ]
    },
    {
      'questionText': 'What is your favorite laptop?',
      'answerText': [
        {'text': 'Apple', 'score': 10},
        {'text': 'Dell', 'score': 9},
        {'text': 'Hp', 'score': 7},
        {'text': 'Lenovo', 'score': 4}
      ]
    },
    {
      'questionText': 'What is your favorite car model?',
      'answerText': [
        {'text': 'Mercedes Benz', 'score': 10},
        {'text': 'Audi', 'score': 7},
        {'text': 'Ferrai', 'score': 7},
        {'text': 'Jaguar', 'score': 8},
        {'text': 'Ford', 'score': 4}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    void anwerQuestion(int score) {
      totalScore = totalScore + score;
      setState(() {
        index = index + 1;
      });
    }

    void resetQuiz(){
      setState(() {
        totalScore = 0;
        index = 0;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first app')),
        body: index != questions.length
            ? Column(
                children: [
                  Question(questions[index]['questionText']),
                  ...(questions[index]['answerText'] as List<Map<String, Object>>)
                      .map((ans) {
                    return Answer(() => anwerQuestion(ans['score']), ans['text'] as String);
                  }),
                ],
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
