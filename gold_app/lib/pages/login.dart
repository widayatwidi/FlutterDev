
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/pages/profile.dart';
import 'package:gold_app/pages/register.dart';
import 'package:gold_app/widgets/app_large_text.dart';
import 'package:gold_app/widgets/app_text.dart';
import 'package:gold_app/widgets/reusable_widget.dart';
import 'package:gold_app/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo.png"),
                SizedBox(height: 50,),
                Center(
                  child: AppLargeText(
                    text: "Selamat Datang di Baby Gold!",
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12,),
                Center(
                  child: AppLargeText(
                    text: "Silahkan lakukan login untuk melanjutkan",
                    size: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 50,),
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
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => ProfilePage())
                      );
                    }), 
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: TextButton(
                    child: const Text(
                      "Lupa kata sandi?",
                      style: TextStyle(color: Color.fromARGB(255, 76, 242, 42), fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context, 
                      //   MaterialPageRoute(builder: (context) => LoginPage())
                      // );
                    },
                  ),
                ),
                SizedBox(height: 10),
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
                        "Tidak memiliki akun?",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      TextButton(
                        child: const Text(
                          "Daftar di sini.",
                          style: TextStyle(color: Color.fromARGB(255, 76, 242, 42), fontWeight: FontWeight.w400, fontSize: 12),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}