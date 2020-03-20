import 'package:flutter/material.dart';

class CopyrightWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "© 2019 - 2020 \n"
            "Lorem ipsum dolor sit amet",
        style: TextStyle(fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }
}
