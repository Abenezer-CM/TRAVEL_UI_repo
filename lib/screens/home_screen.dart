// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:traveluiapp/screens/place_cards.dart';
import 'package:traveluiapp/screens/place_cards_details.dart';
import 'package:traveluiapp/screens/popular_card._widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget listOfTopCategories(String name, IconData icon, int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 7.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index == 0 ? Color(0xff5D94FF) : Colors.white),
        child: Row(
          children: [
            Icon(icon, color: (index == 0) ? Colors.white : Colors.grey[500]),
            SizedBox(
              width: 5,
            ),
            Text(
              name,
              style:
                  TextStyle(color: index == 0 ? Colors.white : Colors.black38),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      //Main column for the entire screen
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //top blue container
          Container(
            padding: EdgeInsets.only(
                top: height * 0.08, left: 12, right: 12, bottom: 12),
            width: width,
            height: height * 0.35,
            decoration: BoxDecoration(color: Color(0xff5D94FF)),
            //column for the top blue container
            child: Column(children: [
              //top row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage:
                            AssetImage("assets/images/profile_pic (2).png"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Morning, Hasan Faris",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )
                    ]),
                  ),
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    child: Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              //Text
              Text("Discover Your Next Trip Destination",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              SizedBox(
                height: height * 0.03,
              ),
              //bottom row
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(children: [
                      Icon(
                        Icons.search,
                        color: Color(0xff5D94FF),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search something...",
                            hintStyle: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w600),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(color: Color(0xff5D94FF)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff5D94FF),
                        ),
                        child: Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ]),
                  ),
                ),
                SizedBox(width: width * 0.05),
                CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.sort,
                    color: Color(0xff5D94FF),
                  ),
                )
              ])
            ]),
          ),
          SizedBox(height: height * 0.025),
          //main content
          Container(
            width: width,
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: height * 0.016),
                SizedBox(
                  height: height * 0.045,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      listOfTopCategories("Beach", Icons.beach_access, 0),
                      listOfTopCategories("Mountain", Icons.landscape, 1),
                      listOfTopCategories("Snow", Icons.snowing, 1),
                      listOfTopCategories("Desert", Icons.wb_sunny, 1),
                      listOfTopCategories("Camping", Icons.outdoor_grill, 1),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                SizedBox(
                  height: height * 0.29,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlaceCardsDetails()));
                        },
                        child: PlaceCards(
                            img: "assets/images/pic_4.jpg",
                            placeName: "Pangandaran Beach",
                            location: "Pangandaran, Indonesia",
                            rating: " 4.5"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: PlaceCards(
                            img: "assets/images/pic_5.jpg",
                            placeName: "Candi Borobudur",
                            location: "Borobudur, Indonesia",
                            rating: " 3.5"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: PlaceCards(
                            img: "assets/images/pic_6.jpg",
                            placeName: "Candi Prambanan",
                            location: "Prambanan, Indonesia",
                            rating: " 5.0"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Destinations",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all ",
                          style:
                              TextStyle(color: Color(0xff5D94FF), fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                          color: Color(0xff5D94FF),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                SizedBox(
                  height: height * 0.13,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PopularCardWidget(
                          img: "assets/images/pic_1.jpg",
                          title: "Bali",
                          subtitle: "Indonesia",
                          price: "23,50",
                          rating: "4.5"),
                      PopularCardWidget(
                          img: "assets/images/pic_2.jpg",
                          title: "Maldives",
                          subtitle: "Maldives",
                          price: "15,00",
                          rating: "4.8"),
                      PopularCardWidget(
                          img: "assets/images/pic_3.jpg",
                          title: "Santorini",
                          subtitle: "Greece",
                          price: "25,00",
                          rating: "5")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        width: width,
        height: height * 0.08,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              Icon(
                Icons.home,
                color: Color(0xff5D94FF),
                size: 30,
              ),
              Text("Discover",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xff5D94FF)))
            ]),
            Column(children: [
              Icon(
                Icons.apps,
                color: Colors.black45,
                size: 30,
              ),
              Text("Category",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black45))
            ]),
            Column(children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xff5D94FF),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                ),
              )
            ]),
            Column(children: [
              Icon(
                Icons.save,
                color: Colors.black45,
                size: 30,
              ),
              Text("Saved",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black45))
            ]),
            Column(children: [
              Icon(
                Icons.person,
                color: Colors.black45,
                size: 30,
              ),
              Text("Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black45))
            ]),
          ],
        ),
      ),
    );
  }
}
