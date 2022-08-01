import 'package:apps_travel/pages/homepage.dart';
import 'package:apps_travel/pages/register.dart';
import 'package:apps_travel/widgets/app_large_text.dart';
import 'package:apps_travel/widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            hexStringToColor("2E0249"),
            hexStringToColor("570A57"),
            hexStringToColor("A91079")
          ],
          begin: Alignment.topCenter, end: Alignment.bottomCenter
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                AppLargeText(text: "Login Page", color: Colors.white, size: 20,),
                SizedBox(height: 25,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Masukkan email anda",
                      labelStyle: TextStyle(
                        color: FocusNode().hasFocus ? Colors.white : Colors.black,
                        fontSize: 18
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.mail)
                    ),
                  ),
                ),
                SizedBox(height: 13,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextFormField(
                    // keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Masukkan password anda",
                      labelStyle: TextStyle(
                        color: FocusNode().hasFocus ? Colors.white : Colors.black,
                        fontSize: 18
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.password)
                    ),
                  ),
                ),
                SizedBox(height: 13,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextFormField(
                    // keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Re-Password",
                      hintText: "Masukkan lagi password anda",
                      labelStyle: TextStyle(
                        color: FocusNode().hasFocus ? Colors.white : Colors.black,
                        fontSize: 18
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.password)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  
                  height: 50,
                  width: MediaQuery.of(context).size.width * 1.2,
                  // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => HomePage())
                      );
                    }), 
                    child: const Text("LOGIN")
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Belum punya akun?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      child: const Text(
                        "Register here",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => RegisterPage())
                      );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}