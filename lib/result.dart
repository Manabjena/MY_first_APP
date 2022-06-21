import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultteext = "You Did It";
    if (resultScore <= 6) {
      resultteext = "You are awesome";
    } else {
      resultteext = "You need some development";
    }
    return resultteext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
