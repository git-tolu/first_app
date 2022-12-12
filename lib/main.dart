import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\'s your favourite color',
        'answer': ['blue', 'red', 'blue'],
      },
      {
        'questionText': 'what your favourite animal',
        'answer': ['rabbit', 'snake', 'lion'],
      },
      {
        'questionText': 'Who is your faviourite instructor',
        'answer': ['max', 'max', 'max'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
