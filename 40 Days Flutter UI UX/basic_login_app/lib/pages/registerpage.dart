import 'package:basic_login_app/pages/loginpage.dart';
import 'package:basic_login_app/widgets/large_text.dart';
import 'package:basic_login_app/widgets/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("2E0249"),
              hexStringToColor("570A57"),
              hexStringToColor("A91079")
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                LargeText(text: "Registrasi Page",size: 22,color: Colors.white,),
                SizedBox(height: 40,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Username anda",
                      labelStyle: TextStyle(
                        color: FocusNode().hasFocus ? Colors.white : Colors.black,
                        fontSize: 15
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.person_outline_outlined)
                    ),
                  ),
                ),
                SizedBox(height: 13,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Email anda",
                      labelStyle: TextStyle(
                        color: FocusNode().hasFocus ? Colors.white : Colors.black,
                        fontSize: 15
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.mail_outline)
                    ),
                  ),
                ),
                SizedBox(height: 13,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextFormField(
                    // keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password anda",
                      labelStyle: TextStyle(
                        color: FocusNode().hasFocus ? Colors.white : Colors.black,
                        fontSize: 15
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.lock_outline)
                    ),
                  ),
                ),
                SizedBox(height: 13,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextFormField(
                    // keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Re-Password",
                      hintText: "Password ulang anda",
                      labelStyle: TextStyle(
                        color: FocusNode().hasFocus ? Colors.white : Colors.black,
                        fontSize: 15
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.lock_outline)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => RegisterPage())
                      );
                    },
                    child: const Text("Register", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Sudah punya akun?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => LoginPage())
                        );
                      }, 
                      child: const Text(
                        "Login here",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      )
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