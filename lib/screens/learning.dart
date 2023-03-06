import 'dart:html';
import 'dart:math';

import 'package:signy_app/screens/categoryscreens.dart';

import 'package:flutter/material.dart';
import 'loginscreens.dart';
import 'signupscreens.dart';
import 'welcomescreens.dart';

class learning extends StatefulWidget {
  const learning({Key? key}) : super(key: key);
  static const String id = "learning";
  @override
  State<learning> createState() => _learningState();
}

class _learningState extends State<learning> {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(167, 186, 224, 1),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffffffff),
          ),
          onTap: () {
            Navigator.pushNamed(context, categoryscreens.id);
          },
        ),
        title: Text(
          "LEARNING ",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          ListView(
            children: <Widget>[
              Image.asset('box1.png'),
              SizedBox(
                height: 40,
              ),
              lesson("no0.png"),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  lesson('no1.png'),
                  SizedBox(
                    width: 20,
                  ),
                  lesson('no2.png'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  lesson('no3.png'),
                  SizedBox(
                    width: 20,
                  ),
                  lesson('no4.png'),
                  SizedBox(
                    width: 20,
                  ),
                  lesson('no5.png'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  lesson('no6.png'),
                  SizedBox(
                    width: 20,
                  ),
                  lesson('no7.png'),
                  SizedBox(
                    width: 20,
                  ),
                  lesson('no8.png'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              lesson('no9.png'),
            ],
          )
        ],
      ),
    );
  }

  Widget lesson(String image) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Transform.rotate(
                angle: 3 * pi / 4,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[600]!),
                  value: 2,
                  strokeWidth: 60,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 42,
              ),
              CircleAvatar(
                child: Image.asset(
                  image,
                  height: 50,
                ),
                radius: 35,
                backgroundColor: Colors.indigoAccent[100],
              )
            ],
          ),
        ],
      ),
    );
  }
}
