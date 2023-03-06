import 'dart:html';
import 'package:signy_app/screens/Screenone.dart';
import 'package:signy_app/screens/categoryscreens.dart';
import 'package:flutter/material.dart';
import 'package:signy_app/screens/learning.dart';
import 'loginscreens.dart';
import 'signupscreens.dart';
import 'welcomescreens.dart';

class categoryscreens extends StatefulWidget {
  const categoryscreens({Key? key}) : super(key: key);
  static const String id = "categoryscreens";
  @override
  State<categoryscreens> createState() => _categoryscreensState();
}

class _categoryscreensState extends State<categoryscreens> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(167, 186, 224, 1),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffffffff),
          ),
          onTap: () {
            Navigator.pushNamed(context, Screenone.id);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("categorybg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'Category',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
                SizedBox(height: 200),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, learning.id), // Image tapped
                  child: Image.asset(
                    "learninglogo.png",
                    // fit: BoxFit.contain, // Fixes border issues
                    width: 300,
                    height: 200,
                  ),
                ),
                GestureDetector(
                  onTap: () {}, // Image tapped
                  child: Image.asset(
                    "translationlogo.png",
                    // fit: BoxFit.contain, // Fixes border issues
                    width: 300,
                    height: 200,
                  ),
                )

                // do not have an account
              ],
            ),
          ),
        ),
      ),
    );
  }
}
