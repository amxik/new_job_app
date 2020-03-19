import 'package:flutter/material.dart';
import 'package:new_job_app/widgets/circle.dart';
import 'package:new_job_app/widgets/info.dart';
import 'package:new_job_app/widgets/pause_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("№ 456973"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InfoWidget(),
            CircleWidget(),
            PauseButtonWidget(),
            Container(
              child: Text(
                "Нажимая кнопку «Приостановить» \n"
                "вы остановите отсчет времени программы",
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Text(
                "2019 - 2020 \n"
                "Lorem ipsum dolor sit amet",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
