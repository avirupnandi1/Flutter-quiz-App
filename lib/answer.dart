import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String AnswerText;

  Answer(this.selectHandler, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.orange,
            ),
          ),
          child: Text(AnswerText),
          onPressed: selectHandler,
        ));
  }
}
