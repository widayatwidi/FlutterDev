import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp_second/widgets/app_larget_text.dart';
import 'package:travelapp_second/widgets/app_text.dart';
import 'package:travelapp_second/widgets/colors.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> with TickerProviderStateMixin {
  var images = {
    "balloning.png":"Balloning",
    "hiking.png":"Hiking",
    "kayaking.png":"Kayaking",
    "snorkling.png":"Snorkling"
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // menu top bar
            Container(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 30, color: Colors.black54,),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25,),
            // title discover teks
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Discover"),
            ),
            SizedBox(height: 25,),
            // tab menu bar
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  // indicator: CircleTabIndicator(color: Colors.black38, radius: 4),
                  tabs: [
                    Tab(text: "Places",),
                    Tab(text: "Inspiration",),
                    Tab(text: "Emotions",)
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return 
                      Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300, // height same with parent height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/mountain.jpeg"
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      );
                    },
                  ),
                  Text("There"),
                  Text("Bye")
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(text: "Explore more", size: 22,),
                  AppText(text: "See all", color: AppColors.textColor1,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 23),
                  child: Column(
                    children: [
                      Container(
                      // margin: const EdgeInsets.only(right: 50),
                          width: 80,
                        height: 80, // height same with parent height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/"+images.keys.elementAt(index)),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      Container(
                        child: AppText(
                          text: images.values.elementAt(index),
                          color: AppColors.textColor2,
                          size: 13,
                        ),
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        // onTap: onTap,
        // currentIndex: currentIndex,
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

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  } 
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias=true;
    final Offset circleOffset = Offset(configuration.size!.width/2 - radius/2, configuration.size!.height - radius*2);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }
}