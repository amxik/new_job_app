import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class HexagonAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 100,
      width: 100,
      child: ClipPolygon(
        sides: 6,
        borderRadius: 5.0,
        // Default 0.0 degrees
        rotate: 0.0,
        // Default 0.0 degrees
        boxShadows: [
          PolygonBoxShadow(color: Colors.black, elevation: 1.0),
          PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
        ],
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/avatarka.jpeg"))),
        ),
      ),
    );
  }
}
