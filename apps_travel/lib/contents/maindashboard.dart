import 'package:apps_travel/widgets/app_large_text.dart';
import 'package:apps_travel/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> with TickerProviderStateMixin {
  
  List labelLoc = [
    "Malioboro",
    "Parangtritis",
    "Kaliurang",
    "Gumuk Pasir",
    "Pasir Selatan"
  ];

  List imagesSlide = [
    "malioboro.jpeg",
    "paris.jpeg",
    "mountain.jpeg",
    "gumuk.jpeg",
    "gumuk2.jpeg"
  ];

  List imagesSlide2 = [
    "paris.jpeg",
    "gumuk.jpeg",
    "gumuk2.jpeg"
  ];

  List imagesSlide3 = [
    "mountain.jpeg",
    "gumuk.jpeg",
    "gumuk2.jpeg"
  ];

  List imagesSlide4 = [
    "malioboro.jpeg",
    "paris.jpeg",
    "mountain.jpeg",
    "gumuk.jpeg",
    "gumuk2.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 5),
              color: Colors.white,
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
                    Tab(text: "Popular",),
                    Tab(text: "Favorites",),
                    Tab(text: "Best Deals",),
                    Tab(text: "New Places",)
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 20),
              height: 240,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return 
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 15, top: 10),
                              width: 140,
                              height: 150, // height same with parent height
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/"+imagesSlide[index]
                                  ),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              child: Text(labelLoc[index]),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Wrap(
                                  children: List.generate(5, (index) {
                                    return Icon(Icons.star, color: Colors.green, size: 10,);
                                  }),
                                ),
                                SizedBox(width: 6,),
                                Icon(Icons.car_repair, color: Colors.green, size: 13,),
                                SizedBox(width: 3,),
                                Icon(Icons.camera_alt, color: Colors.green, size: 13,)
                              ],
                            ),
                            SizedBox(height: 8,),
                            Container(
                              child: Text("Rp. 299.000", style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      );
                      
                    },
                  ),
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return 
                      Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 140,
                        height: 150, // height same with parent height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/"+imagesSlide2[index]
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return 
                      Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 140,
                        height: 150, // height same with parent height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/"+imagesSlide3[index]
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return 
                      Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 140,
                        height: 150, // height same with parent height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/"+imagesSlide4[index]
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Location", size: 16,),
            ),
            SizedBox(height: 3,),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: AppText(text: "Location categories", size: 10,),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 180,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/malioboro.jpeg"
                        ),
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                      )
                    ),
                    child: Center(
                      child: Text("Yogyakarta", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 180,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/surakarta.jpeg"
                        ),
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                      )
                    ),
                    child: Center(
                      child: Text("Surakarta", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 180,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/bandung.jpeg"
                        ),
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                      )
                    ),
                    child: Center(
                      child: Text("Bandung", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 180,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/paris.jpeg"
                        ),
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                      )
                    ),
                    child: Center(
                      child: Text("Kota Lainnya", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(text: "Events", size: 16,),
                  SizedBox(height: 3,),
                  AppText(text: "New events categories", size: 10,)
                ],
              ),
              // child: AppLargeText(text: "Events", size: 16,),
            ),
            
            // Container(
            //   padding: const EdgeInsets.only(left: 20),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Container(
            //           width: 180,
            //           height: 100,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.green,
            //             image: DecorationImage(
            //               image: AssetImage(
            //                 "assets/images/malioboro.jpeg"
            //               ),
            //               fit: BoxFit.cover
            //             )
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: 10,),
            //       Expanded(
            //         child: Container(
            //           width: 180,
            //           height: 100,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.green,
            //             image: DecorationImage(
            //               image: AssetImage(
            //                 "assets/images/malioboro.jpeg"
            //               ),
            //               fit: BoxFit.cover
            //             )
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}