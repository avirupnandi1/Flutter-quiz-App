import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get Resultphrase {
    var resultText = 'you did it 😃😃';

    if (resultScore == 30) {
      resultText = "scored 30 🤖";
    } else if (resultScore == 20) {
      resultText = 'scored 20😕 ';
    } else {
      resultText = 'scored 0 💀';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          Resultphrase,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
            child: Text(
              'Restart',
              style: TextStyle(fontSize: 30),
            ),
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            onPressed: resetHandler),
      ],
    ));
  }
}
