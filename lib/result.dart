import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function() res;
  final finalResult;
  Result(this.res, this.finalResult);

  String resultPhrse() {
    String resultText;
    if (finalResult >= 100) {
      resultText = "you are awesome !";
    } else if (finalResult >= 60) {
      resultText = "almost good !";
    } else {
      resultText = "you are trash";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("your score is $finalResult",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: b)),
        Text(
          resultPhrse(),
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: b),
        ),
        TextButton(
            onPressed: res,
            child: Text("Restart the app !",
                style: TextStyle(
                  fontSize: 25,
                )))
      ],
    ));
  }
}
