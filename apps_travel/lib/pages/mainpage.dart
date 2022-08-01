import 'package:apps_travel/contents/favorite.dart';
import 'package:apps_travel/contents/maindashboard.dart';
import 'package:apps_travel/contents/mytrips.dart';
import 'package:apps_travel/contents/profile.dart';
import 'package:apps_travel/contents/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    MainDashboard(),
    FavoritePage(),
    MyTrips(),
    SearchPage(),
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
        unselectedFontSize: 10,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:' Home',icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(label: 'Favorites' ,icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(label: 'My Trips' ,icon: Icon(Icons.card_travel)),
          BottomNavigationBarItem(label: 'Search' ,icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Akun' ,icon: Icon(Icons.person))
        ],
      ),
    );
  }
}