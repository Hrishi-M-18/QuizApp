import 'package:flutter/material.dart';
import './question.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  Result(this.resultScore, this.reset);

  String get resultPh {
    String resText;
    resText = 'You scored '+resultScore.toString()+'/10'+'\n'+'\n';
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPh,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
              child: Text('Restart'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black87),
                side: MaterialStateProperty.all(
                  BorderSide(
                      width: 2,
                      color: Colors.black87,
                      style: BorderStyle.solid),
                ),
              ),
              onPressed: reset),
        ],
      ),
    );
  }
}
