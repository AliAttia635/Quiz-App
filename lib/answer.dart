import 'package:flutter/material.dart';

class Asnwer extends StatelessWidget {
  final answer;
  final Function() x;

  Asnwer(this.x , this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: x,
        child: Text(
          this.answer,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}