import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  final int a;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
    @required this.a,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(a.toString()),
        Question(questions[questionIndex]['question']),

        /*--> ... operator is a spread operator.
            It's function is that it pulls all the values out of this list
            and adds them to the outer list as separate values*/
        ...(questions[questionIndex]['answer'] as List<Map<String,Object>>).map((ans) {
          return Answer(() => answerQuestion(ans['score']), ans['text']);
        })
      ],
    );
  }
}
