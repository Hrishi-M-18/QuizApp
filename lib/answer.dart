import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function sel;
  final String ansText;
  Answer(this.sel, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(27),
        ),
        child: Text(ansText),
        onPressed: sel,
      ),
    );
  }
}
