import 'package:firebase_login_app_sec/pages/home_screen.dart';
import 'package:firebase_login_app_sec/pages/signup_screen.dart';
import 'package:firebase_login_app_sec/reusable_widget.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.13, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo.png"),
                SizedBox(height: 30,),
                reusableTextField("Enter username", Icons.person_outline, false, _emailTextController),
                SizedBox(height: 20,),
                reusableTextField("Enter password", Icons.lock_outline, true, _passwordTextController),
                SizedBox(height: 20,),
                signInSignUpButton(context, true, () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => HomeScreen())
                  );
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account?", 
          style: TextStyle(color: Colors.white70)
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, 
              MaterialPageRoute(builder: (context) => SignupScreen())
            );
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}