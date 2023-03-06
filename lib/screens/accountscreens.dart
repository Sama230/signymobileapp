import 'package:flutter/material.dart';
import 'package:signy_app/screens/Screenone.dart';
import 'package:signy_app/screens/editaccscreens.dart';
import 'package:signy_app/screens/welcomescreens.dart';

class accountscreens extends StatefulWidget {
  const accountscreens({Key? key}) : super(key: key);
  static const String id = "accountscreens";
  @override
  State<accountscreens> createState() => _accountscreensState();

// sign user out method

}

class _accountscreensState extends State<accountscreens> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFA7BAE0),
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor, //to make it as the background color
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF0E5075),
          ),
          onPressed: () {
            Navigator.pushNamed(context, Screenone.id);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Form(
          child: Center(
            child: Column(children: [
              //message to the user
              SizedBox(height: 50),
              Text(
                'Profile ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: Stack(children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("avatar.png"),
                      )),
                ),
              ])),
              Text(
                'Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'email@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 140),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, editaccscreens.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  minimumSize: Size(150, 70),
                  // Background color
                ),
                child: const Text(
                  'Account  Settings',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0E5075),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, editaccscreens.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  minimumSize: Size(150, 70),
                  // Background color
                ),
                child: const Text(
                  '        Favorite         ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0E5075),
                  ),
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  //AuthController.instance.logout();
                  Navigator.pushNamed(context, welcomescreens.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),

                  minimumSize: Size(150, 70),
                  // Background color
                ),
                child: const Text(
                  '         Logout          ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0E5075),
                  ),
                ),
              ),

              // sign in button
            ]),
          ),
        ),
      ),
    );
  }
}
