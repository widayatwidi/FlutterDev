import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_sec/pages/login.dart';
import 'package:gold_app_sec/widgets/app_large_text.dart';
import 'package:gold_app_sec/widgets/reusable_widget.dart';
import 'package:gold_app_sec/widgets/text_field.dart';

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
        decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            hexStringToColor("000000"),
            hexStringToColor("100F0F"),
            hexStringToColor("100720")
          ],
          begin: Alignment.topCenter, end: Alignment.bottomCenter
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.06, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo.png"),
                SizedBox(height: 20,),
                Center(
                  child: AppLargeText(
                    text: "Lakukan registrasi di sini.",
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30,),
                TextFieldWidget(
                  hintText: 'Nama Lengkap',
                  obscureText: false,
                  prefixIconData: Icons.person,
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  hintText: 'Email',
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  hintText: 'Password',
                  obscureText: true,
                  prefixIconData: Icons.lock_outline,
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  hintText: 'Ulangi Password',
                  obscureText: true,
                  prefixIconData: Icons.lock_outline,
                ),
                SizedBox(height: 30,),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 1.2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 76, 242, 42),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(9)
                      )
                    ),
                    onPressed: (() {
                      print("Proses Login");
                      // Navigator.push(
                      //   context, 
                      //   MaterialPageRoute(builder: (context) => DestinasiPage())
                      // );
                    }), 
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 43, 42, 41),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Sudah memiliki akun?",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      TextButton(
                        child: const Text(
                          "Login di sini.",
                          style: TextStyle(color: Color.fromARGB(255, 76, 242, 42), fontWeight: FontWeight.w400, fontSize: 12),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}