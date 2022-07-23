import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp_second/pages/destinasi.dart';
import 'package:travelapp_second/pages/video.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List pages = [
    VideoPage(),
    VideoPage(),
    VideoPage(),
    CommunityPage()
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.teal,
              width: 0.8
            )
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: "What are you going?",
              border: InputBorder.none
            ),
          ),
        ),
        
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:' Home',icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: 'Bar Chart' ,icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: 'Search' ,icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Profile' ,icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}