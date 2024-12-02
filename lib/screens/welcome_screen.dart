// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traveluiapp/screens/home_screen.dart';
import 'package:traveluiapp/screens/welcome_screen_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentIndex = 0;

  Widget threeDots(double width, int index) {
    return Padding(
      padding: EdgeInsets.only(right: width * 0.02),
      child: CircleAvatar(
        backgroundColor:
            index == currentIndex ? Color(0xff5D94FF) : Colors.black12,
        radius: width * 0.02,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
              onPageChanged: (value) {
                print(value);
                setState(() {
                  currentIndex = value;
                });
              },
              scrollDirection: Axis.horizontal,
              children: const [
                WelcomeScreenWidget(
                  title: "Discover Amazing World with Gotravel!",
                  description:
                      "Experience the thril of navigating the ever-evolving real estate market.",
                  imgLocation: "assets/images/pic_1.1.png",
                ),
                WelcomeScreenWidget(
                  title: "Embark on Your Dream Journey!",
                  description:
                      "Discover hidden gems and unforgettable experiences around the globe. Let Gotravel be your guide to new adventures.",
                  imgLocation: "assets/images/pic_2.2.png",
                ),
                WelcomeScreenWidget(
                  title: "Your Next Great Escape Awaits",
                  description:
                      "Find inspiration in every destination. Dive into the world’s wonders with Gotravel and make every trip extraordinary.",
                  imgLocation: "assets/images/pic_3.3.png",
                ),
              ]),
          Positioned(
              top: height * 0.08,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.airplanemode_on,
                    color: Color.fromARGB(255, 42, 110, 245),
                    size: 35,
                  ),
                  Text(
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromARGB(255, 56, 118, 243)),
                    " Gotravel",
                  )
                ],
              )),
          Positioned(
              bottom: height * 0.12,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  threeDots(width, 0),
                  threeDots(width, 1),
                  threeDots(width, 2),
                ],
              )),
          Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color(0xff5D94FF)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(9.0),
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    )),
              )),
        ],
      ),
    );
  }
}
