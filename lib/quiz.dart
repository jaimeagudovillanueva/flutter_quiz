import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final Function answerQuestion;

  Quiz({@required this.question, @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question['questionText']),
        ...(question['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(answer['text'], () => answerQuestion(answer['score'])))
            .toList()
      ],
    );
  }
}
