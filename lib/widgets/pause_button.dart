import 'package:flutter/material.dart';

class PauseButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text("Приостановить", style: TextStyle(fontSize: 20),),
        onPressed: () {},
      ),
    );
  }
}
