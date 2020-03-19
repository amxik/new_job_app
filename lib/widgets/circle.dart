import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              "Время случая",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[_clipRectWidget(), _timerWidget()],
          ),
          _statusWidget()
        ],
      ),
    );
  }

  Widget _clipRectWidget() {
    return Container(
      height: 180,
      child: ClipRect(
        clipBehavior: Clip.hardEdge,
        child: OverflowBox(
          maxHeight: 250,
          maxWidth: 250,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 20, color: Colors.grey[300]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _timerWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              child: Text(
            "Часы / Минуты",
            style: TextStyle(fontSize: 20),
          )),
          Container(
              child: Text(
            "      04:29     +",
            style: TextStyle(fontSize: 45),
          )),
          Container(
              child: Text(
            "48",
            style: TextStyle(fontSize: 20),
          ))
        ],
      ),
    );
  }

  Widget _statusWidget() {
    return Container(
      child: RichText(
        text: TextSpan(
            text: "СТАТУС: ",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontStyle: FontStyle.italic),
            children: [
              TextSpan(text: "АКТИВНО", style: TextStyle(color: Colors.green))
            ]),
      ),
    );
  }
}
