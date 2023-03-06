import 'package:flutter/material.dart';
import 'package:signy_app/screens/accountscreens.dart';

class editaccscreens extends StatefulWidget {
  const editaccscreens({Key? key}) : super(key: key);
  static const String id = "editaccscreens";
  @override
  State<editaccscreens> createState() => _editaccscreensState();
}

class _editaccscreensState extends State<editaccscreens> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

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
            Navigator.pushNamed(context, accountscreens.id);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context)
                .unfocus(); // function to allow the user to deselect the textfield
          },
          child: ListView(
            //to be able to scroll
            children: [
              Text(
                "Edit Profile ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Center(
                child: Stack(
                  children: [
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
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Color(0xFF0E5075),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 35),
              buildTextField("Full Name", "John Alex", false),
              buildTextField("Email", "alex@gmail.com", false),
              buildTextField("Password", "********", true),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0E5075),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      minimumSize: Size(150, 70),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    child: Text("Cancel"),
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0E5075),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      minimumSize: Size(150, 70),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xFF0E5075),
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
