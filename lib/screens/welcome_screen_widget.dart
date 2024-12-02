import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreenWidget extends StatefulWidget {
  final String imgLocation;
  final String title;
  final description;
  const WelcomeScreenWidget(
      {super.key,
      required this.imgLocation,
      required this.description,
      required this.title});

  @override
  State<WelcomeScreenWidget> createState() => _WelcomeScreenWidgetState();
}

class _WelcomeScreenWidgetState extends State<WelcomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: Image.asset(
            widget.imgLocation,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: height * 0.18,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Text(
                    textAlign: TextAlign.center,
                    widget.title,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: const Color.fromARGB(255, 66, 125, 243),
                          fontSize: height * 0.036,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: Text(
                    textAlign: TextAlign.center,
                    "${widget.description}",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
