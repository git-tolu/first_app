import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color',
      "what your favourite animal"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text('answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('answer 2'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            ElevatedButton(
              child: Text('answer 3'),
              onPressed: () {
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
