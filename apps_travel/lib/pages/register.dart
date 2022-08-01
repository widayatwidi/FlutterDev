import 'dart:convert';

import 'package:apps_travel/api.dart';
import 'package:apps_travel/pages/login.dart';
import 'package:apps_travel/widgets/app_large_text.dart';
import 'package:apps_travel/widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  _register() async {
    print("Masuk ke function register");
    var data = {
      'name':nameController.text,
      'email':emailController.text,
      'password':passController.text,
      'password_confirmation':repassController.text,
      'phone':'231231',
      'address':'Jogja'
    };
    print(data);
    var response = await CallApi().postData(data, 'register');
    var body = jsonDecode(response.body);
    print("respon keluar");
    print(response);
    if(body['success']) {
      Navigator.push(
        context, 
        new MaterialPageRoute(builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Welcome user baru!"),
          ),
          body: Container(
            color: Colors.white24,
          ),
        ))
      );
    }
  }

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
                AppLargeText(text: "Register Page", color: Colors.white, size: 20,),
                SizedBox(height: 25,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Nama Lengkap",
                      hintText: "Masukkan nama anda",
                      labelStyle: TextStyle(
                        color: FocusNode().hasFocus ? Colors.white : Colors.black,
                        fontSize: 18
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.account_circle)
                    ),
                  ),
                ),
                SizedBox(height: 13,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child: TextFormField(
                    controller: emailController,
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
                    controller: passController,
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
                    controller: repassController,
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
                      print("Tekan Register");
                      _register();
                      // Navigator.push(
                      //   context, 
                      //   MaterialPageRoute(builder: (context) => DestinasiPage())
                      // );
                    }), 
                    child: const Text("REGISTER")
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Sudah punya akun?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      child: const Text(
                        "Login here",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => LoginPage())
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