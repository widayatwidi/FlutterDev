import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_sec/pages/loghistory.dart';
import 'package:gold_app_sec/pages/maindashboard.dart';
import 'package:gold_app_sec/pages/profile.dart';
import 'package:gold_app_sec/pages/transaksi.dart';
import 'package:gold_app_sec/widgets/reusable_widget.dart';

class TransaksiBeli extends StatefulWidget {
  const TransaksiBeli({Key? key}) : super(key: key);

  @override
  State<TransaksiBeli> createState() => _TransaksiBeliState();
}

class _TransaksiBeliState extends State<TransaksiBeli> {
  List pages = [
    MainDashboardPage(),
    LogHistoryPage(),
    TransaksiPage(),
    ProfilePage()
  ];
  int currentIndex = 2;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("F8F2EF"),
              hexStringToColor("F8F2EF"),
              hexStringToColor("F8F2EF")
            ],
            begin: Alignment.topCenter, end: Alignment.bottomCenter
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [                                                               
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 2),       
          ],  
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          child: BottomNavigationBar(
            unselectedFontSize: 10,
            selectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: Colors.black54,
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(label:' Home',icon: Icon(Icons.home_filled),),
              BottomNavigationBarItem(label: 'History' ,icon: Icon(Icons.assessment_outlined)),
              BottomNavigationBarItem(label: 'Graph' ,icon: Icon(Icons.auto_graph_outlined)),
              BottomNavigationBarItem(label: 'Akun' ,icon: Icon(Icons.person))
            ],
          ),
        ),
      ),
    );
  }
}