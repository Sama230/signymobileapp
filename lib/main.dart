import 'dart:html';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signy_app/screens/Screenone.dart';
import 'package:signy_app/screens/accountscreens.dart';
import 'package:signy_app/screens/editaccscreens.dart';
import 'package:signy_app/screens/learning.dart';
import 'package:signy_app/screens/locationscreens.dart';
import 'package:signy_app/screens/placescreens.dart';
import 'package:signy_app/screens/signupscreens.dart';
import 'package:signy_app/screens/welcomescreens.dart';
import 'package:signy_app/screens/loginscreens.dart';
import 'package:signy_app/screens/categoryscreens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        dividerColor: Colors.black,
      ),
      home: const welcomescreens(),
      routes: {
        loginscreens.id: (context) => loginscreens(),
        signupscreens.id: (context) => signupscreens(),
        Screenone.id: (context) => Screenone(),
        categoryscreens.id: (context) => categoryscreens(),
        accountscreens.id: (context) => accountscreens(),
        editaccscreens.id: (context) => editaccscreens(),
        learning.id: (context) => learning(),
      },
    );
  }
}
