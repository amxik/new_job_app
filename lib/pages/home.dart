import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_job_app/pages/timer.dart';
import 'package:new_job_app/widgets/copyright.dart';
import 'package:new_job_app/widgets/hexagon_avatar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _iconButton(Icons.menu),
                  HexagonAvatar(),
                  _iconButton(Icons.notifications)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _iconButton(Icons.assignment),
                  _iconButton(Icons.perm_identity)
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: <Widget>[
                  _iconWithTextVertical(FontAwesomeIcons.ambulance,
                      "  Экстренная \n  помощь", context),
                  _iconWithTextVertical(
                      FontAwesomeIcons.road, "  Помощь \n  всегда", context),
                  _iconWithTextVertical(FontAwesomeIcons.moneyBill,
                      "  Хочу \n  работать", context)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: IconButton(
                    icon: Icon(
                      Icons.access_time,
                      size: 35,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TimerPage()));
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: <Widget>[
                  _iconWithTextHorizontal(Icons.drive_eta, "Text for car icon"),
                  _iconWithTextHorizontal(
                      FontAwesomeIcons.shieldAlt, "Text for shield icon"),
                  _iconWithTextHorizontal(
                      FontAwesomeIcons.paw, "Text for paw icon"),
                  _iconWithTextHorizontal(
                      Icons.airplanemode_active, "Text for airplane icon")
                ],
              ),
              _bankImageWithText(),
              SizedBox(
                height: 30,
              ),
              CopyrightWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconButton(IconData icon) {
    return IconButton(
      icon: Icon(icon, size: 35, color: Colors.black),
    );
  }

  Widget _iconWithTextVertical(
      IconData iconData, String text, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      child: Column(
        children: <Widget>[
          _iconButton(iconData),
          SizedBox(
            height: 30,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _iconWithTextHorizontal(IconData iconData, String text) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: <Widget>[
          _iconButton(iconData),
          SizedBox(
            width: 30,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _bankImageWithText() {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/transfer.jpeg"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              child: Text(
                "Перевод",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Перевод средств с карты на карту",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
