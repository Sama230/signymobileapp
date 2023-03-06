import 'package:flutter/material.dart';
import 'loginscreens.dart';
import 'signupscreens.dart';

class welcomescreens extends StatefulWidget {
  const welcomescreens({Key? key}) : super(key: key);
  static const String id = "welcomescreens";
  @override
  State<welcomescreens> createState() => _welcomescreensState();
}

class _welcomescreensState extends State<welcomescreens> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFA7BAE0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.15),
              child: Container(
                child: Form(
                  child: Column(
                    children: [
                      Image.asset('logo.png'),
                      SizedBox(height: 350),
                      Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.pushNamed(context, signupscreens.id);
                          },
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF0E5075),
                          elevation: 0,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //   Image.asset('logo.png'),
                //   SizedBox(height: 100),
                //   FloatingActionButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, signupscreens.id);
                //     },
                //     foregroundColor: Colors.white,
                //     backgroundColor: Color(0xFF0E5075),
                //     elevation: 0,
                //     child: Icon(
                //       Icons.arrow_forward_ios,
                //       size: 25,
                //     ),
                //   ),
                // ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
