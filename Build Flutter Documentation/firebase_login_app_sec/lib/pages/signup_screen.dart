import 'package:firebase_login_app_sec/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                SizedBox(height: 20,),
                reusableTextField("Enter Username", Icons.person_outline, false, _userNameTextController),
                SizedBox(height: 20,),
                reusableTextField("Enter Email", Icons.email_outlined, false, _emailTextController),
                SizedBox(height: 20,),
                reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                SizedBox(height: 20,),
                signInSignUpButton(context, false, () {
                  // FirebaseAuth.instance.createUserWithEmailAndPassword(
                  //   email: _emailTextController.text, 
                  //   password: _passwordTextController.text
                  // ).then((value) {
                  //   print("Created new account");
                  //   Navigator.push(context, 
                  //     MaterialPageRoute(builder: (context) => HomeScreen())
                  //   );
                  // }).onError((error, stackTrace) {
                  //   print("Error ${error.toString()}");
                  // });
                })
              ],
            ),
          ),
        ),
      ),
    ); 
  }
}