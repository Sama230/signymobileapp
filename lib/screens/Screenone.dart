import 'dart:html';

import 'package:signy_app/screens/categoryscreens.dart';
import 'package:flutter/material.dart';
import 'package:signy_app/screens/placescreens.dart';
import 'loginscreens.dart';
import 'signupscreens.dart';
import 'welcomescreens.dart';

class Screenone extends StatefulWidget {
  const Screenone({Key? key}) : super(key: key);
  static const String id = "Screenone";
  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(167, 186, 224, 1),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Text(
                  'MENU',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 40,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              ListTile(
                title: const Text('FAQs'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('About us'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Privacy Policy'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                      child: Text(
                        '         \n Name ',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Inter',
                            fontSize: 40,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                      width: 364,
                      height: 102,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color: Color.fromRGBO(167, 186, 224, 1),
                      )),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back !",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, categoryscreens.id),
                      child: Image.asset(
                        'Image1.jpeg',
                        fit: BoxFit.contain,
                        width: 300,
                        height: 200,
                      )),
                  SizedBox(height: 20),
                  GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, categoryscreens.id),
                      child: Image.asset(
                        'Image2.jpeg',
                        fit: BoxFit.contain,
                        width: 300,
                        height: 200,
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
