import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_sec/pages/loghistory.dart';
import 'package:gold_app_sec/pages/maindashboard.dart';
import 'package:gold_app_sec/pages/profile.dart';
import 'package:gold_app_sec/pages/transaksi.dart';
import 'package:gold_app_sec/widgets/app_large_text.dart';
import 'package:gold_app_sec/widgets/app_text.dart';
import 'package:gold_app_sec/widgets/reusable_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List pages = [
    MainDashboardPage(),
    LogHistoryPage(),
    TransaksiPage(),
    ProfilePage()
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
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
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedFontSize: 10,
      //   selectedFontSize: 10,
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.white,
      //   // onTap: onTap,
      //   // currentIndex: currentIndex,
      //   selectedItemColor: Colors.black54,
      //   unselectedItemColor: Colors.grey.withOpacity(0.5),
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   elevation: 0,
      //   items: [
      //     BottomNavigationBarItem(label:' Home',icon: Icon(Icons.home_filled)),
      //     BottomNavigationBarItem(label: 'Log' ,icon: Icon(Icons.assessment_outlined)),
      //     BottomNavigationBarItem(label: 'Graph' ,icon: Icon(Icons.auto_graph_outlined)),
      //     BottomNavigationBarItem(label: 'Akun' ,icon: Icon(Icons.person))
      //   ],
      // ),
    );
  }
}