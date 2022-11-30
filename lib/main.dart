import 'package:flutter/material.dart';
import './quiz.dart';
import './answer.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

final questions = [
  {
    'questionText': 'Who won the World cup in 2018?',
    'answer': [
      {'text': 'france', 'score': 10},
      {'text': 'brazil', 'score': 0},
      {'text': 'portugal', 'score': 0},
      {'text': 'spain', 'score': 0}
    ],
  },
  {
    'questionText': 'Who won the 2022 Ballon d Or? ?',
    'answer': [
      {'text': 'Ronaldo', 'score': 0},
      {'text': 'Mbappe', 'score': 0},
      {'text': 'Benzema', 'score': 10},
      {'text': 'Messi', 'score': 0}
    ],
  },
  {
    'questionText': 'Who has hit the fastest T20I century?',
    'answer': [
      {'text': 'Rohit Sharma', 'score': 10},
      {'text': 'Virat Kohli', 'score': 0},
      {'text': 'Alex Hales', 'score': 0},
      {'text': 'David Warner', 'score': 0}
    ],
  },
];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalscore = 0;
  int score = 0;
  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    totalscore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);

    if (questionIndex < questions.length) {
      print('we have more');
    } else {
      print('no more!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
          backgroundColor: Color.fromARGB(255, 12, 59, 116),
        ),
        body: questionIndex < questions.length
            ? quiz(
                answerQuestion: _answerQuestion,
                questionIndex: questionIndex,
                question: questions,
              )
            : Result(totalscore, resetQuiz),
      ),
    );
  }
}
