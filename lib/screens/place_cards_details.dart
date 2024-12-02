// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PlaceCardsDetails extends StatefulWidget {
  const PlaceCardsDetails({super.key});

  @override
  State<PlaceCardsDetails> createState() => _PlaceCardsDetailsState();
}

class _PlaceCardsDetailsState extends State<PlaceCardsDetails> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          // Main container for the entire screen
          body: Container(
              margin: EdgeInsets.only(top: height * 0.06),
              height: height,
              width: width,
              padding: const EdgeInsets.all(13),
              // main column
              child: Column(
                children: [
                  // top row for icons and search bar
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xff5D94FF),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      const Expanded(
                        child: TextField(
                            style: TextStyle(color: Colors.black54),
                            decoration: InputDecoration(
                              prefixIconColor: Color(0xff5D94FF),
                              prefixIcon: Icon(Icons.search),
                              hintText: "Explore Others",
                              hintStyle: TextStyle(color: Colors.black54),
                              contentPadding: EdgeInsets.symmetric(vertical: 8),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                    color: Colors
                                        .black45), // Border color when not focused
                              ),
                            )),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      const Icon(
                        Icons.notification_add,
                        color: Color(0xff5D94FF),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                          height: height * 0.3,
                          width: width,
                          fit: BoxFit.fitWidth,
                          "assets/images/pic_8.jpg")),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                              height: height * 0.09,
                              width: width * 0.22,
                              fit: BoxFit.fitWidth,
                              "assets/images/pic_8.jpg")),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                              height: height * 0.09,
                              width: width * 0.22,
                              fit: BoxFit.fitWidth,
                              "assets/images/pic_7.jpg")),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                              height: height * 0.09,
                              width: width * 0.22,
                              fit: BoxFit.fitWidth,
                              "assets/images/pic_2.jpg")),
                      Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                  height: height * 0.09,
                                  width: width * 0.22,
                                  fit: BoxFit.fitWidth,
                                  "assets/images/pic_4.jpg")),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12)),
                            height: height * 0.09,
                            width: width * 0.22,
                            child: Center(
                                child: Text(
                              "See 20+\nimages",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  // ignore: prefer_const_constructors
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pangandaran Beach",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xff5D94FF),
                              ),
                              Text(
                                "Pangandaran, Indonesia",
                                style: TextStyle(color: Colors.black45),
                              )
                            ],
                          )
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "\$30 ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                    color: Color(0xff5D94FF))),
                            TextSpan(
                                text: "/person",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black45)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width,
                    height: height * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF0F0F0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.lock_clock,
                                    color: Colors.orange,
                                  ),
                                  Text(" Open at")
                                ],
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                "3AM",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          VerticalDivider(
                            indent: 15,
                            endIndent: 15,
                            width: 20,
                            color: Colors.black12,
                            thickness: 2,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color:
                                        const Color.fromARGB(255, 243, 219, 3),
                                  ),
                                  Text(" Ratings")
                                ],
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                "4.2",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          VerticalDivider(
                            indent: 15,
                            endIndent: 15,
                            width: 20,
                            color: Colors.black12,
                            thickness: 2,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.save,
                                    color: Colors.blue,
                                  ),
                                  Text(" Saved")
                                ],
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                "4k",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TabBar(
                      labelStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                      indicatorColor: Color(0xff5D94FF),
                      dividerColor: Colors.transparent,
                      labelColor: Color(0xff5D94FF),
                      tabs: [
                        Tab(
                          child: Text("Overview"),
                        ),
                        Tab(
                          child: Text("Comments"),
                        ),
                        Tab(
                          child: Text("Directions"),
                        ),
                      ]),
                  Expanded(
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        child: Container(
                          child: Text(
                              textAlign: TextAlign.justify,
                              "Pangandaran Beach is a stunning destination located on the southern coast of Java, Indonesia. Known for its breathtaking sunsets, golden sandy shores, and vibrant marine life, it offers a tranquil escape for nature lovers and beach enthusiasts. Visitors can enjoy a variety of activities such as swimming, snorkeling, and taking boat tours to nearby coral reefs. The beach is also surrounded by lush greenery, adding to its serene and picturesque charm."),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          child: Text(
                              textAlign: TextAlign.justify,
                              "Pangandaran Beach receives praise for its natural beauty and relaxed atmosphere. Many visitors appreciate the clean environment, friendly locals, and diverse activities available. The sunsets here are frequently highlighted as a must-see, creating a magical end to the day. However, some note that it can get crowded during peak seasons, and facilities like restaurants and accommodations vary in quality."),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                            child: Text(
                                textAlign: TextAlign.justify,
                                "To reach Pangandaran Beach, travelers can take a bus or private car from Bandung, approximately 6 hours away. From Jakarta, the journey takes about 8-9 hours by car or train to Banjar, followed by a 1-hour drive to the beach. Local transportation options, such as motorbike taxis and rental vehicles, are available for exploring the surrounding area once you arrive.")),
                      ),
                    ]),
                  )
                ],
              )),
          bottomNavigationBar: Container(
            margin: EdgeInsets.all(10),
            height: height * 0.08,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff5D94FF),
            ),
            child: Center(
              child: Text(
                "Book Now",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}
