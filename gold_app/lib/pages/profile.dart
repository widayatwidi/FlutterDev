import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/widgets/app_large_text.dart';
import 'package:gold_app/widgets/app_text.dart';
import 'package:gold_app/widgets/reusable_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(30, MediaQuery.of(context).size.height * 0.03, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage: AssetImage("assets/images/user.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AppLargeText(text: "Selamat datang,", size: 14,color: Colors.white,),
                                  SizedBox(height: 4,),
                                  AppLargeText(text: "Widi Widayat!", size: 14, color: Color.fromARGB(255, 48, 230, 63),)
                                ],
                              ),
                            )
                          ],
                        ), 
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications, color: Colors.white,),
                    onPressed: () {
                      
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: AppText(text: "Emas kamu", color: Colors.white,size: 14,),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: AppLargeText(text: "24,00 gr", color: Colors.white, size: 15,),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: AppLargeText(text: "Rp 14.000.000,-", color: Colors.white, size: 17,),
            ),
            // SizedBox(height: 50,),
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.68,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          hexStringToColor("000000"),
                          hexStringToColor("100F0F"),
                          hexStringToColor("100720")
                        ],
                        begin: Alignment.topCenter, end: Alignment.bottomCenter
                      )
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 30,
                  right: 30,
                  child: Container(
                    width: 380,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 221, 184, 53),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              AppText(text: "Harga Beli saat ini/gr", color: Colors.white, size: 12,),
                              AppText(text: "Harga Jual saat ini/gr", color: Colors.white, size: 12,)                          
                            ]
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              AppLargeText(text: "Rp. 940.269", color: Colors.white, size: 15,),
                              AppLargeText(text: "Rp. 912.060", color: Colors.white, size: 15,),                          
                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 30,
                  right: 200,
                  child: Container(
                    height: 60,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 238, 237),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            
                          },
                          icon: Icon(Icons.account_tree, color: Colors.black,),
                          
                        ),
                        TextButton(
                          child: const Text(
                            "Beli Emas.",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //   context, 
                            //   MaterialPageRoute(builder: (context) => RegisterPage())
                            // );
                          },
                        )
                      ],
                    )
                  ),
                )
                
              ],
            )
            
          ],
        ),
      ),
    );
  }
}