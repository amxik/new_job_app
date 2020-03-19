
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: IconButton(
        icon: Icon(Icons.info_outline, color: Colors.black, size: 30,),
      ),
    );
  }
}
