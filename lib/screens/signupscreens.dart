import 'package:signy_app/screens/loginscreens.dart';
import 'package:flutter/material.dart';

class signupscreens extends StatefulWidget {
  const signupscreens({Key? key}) : super(key: key);
  static const String id = "signupscreens";
  @override
  State<signupscreens> createState() => _signupscreensState();
}

class _signupscreensState extends State<signupscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA7BAE0),
      body: SingleChildScrollView(
        child: Form(
          child: Center(
            child: Column(
              children: [
                Image.asset('hand.png'),
                //message to the user
                Text(
                  'SIGN UP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),

                SizedBox(height: 30),

                // name textfield
                Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Name  ',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xFF0E5075),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Email Textfield
                Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Email  ',
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xFF0E5075),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // password textfield
                Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Password ',
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            color: Color(0xFF0E5075),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                //confirm password
                Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm  Password ',
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            color: Color(0xFF0E5075),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 35),

                // sign in button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0E5075), // Background color
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                // do not have an account
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, loginscreens.id),
                  child: Text(
                    'Already have an account? LOGIN',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
