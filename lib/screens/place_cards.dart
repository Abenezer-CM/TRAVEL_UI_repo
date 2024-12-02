// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PlaceCards extends StatefulWidget {
  final String img;
  final String placeName;
  final String location;
  final String rating;
  const PlaceCards(
      {super.key,
      required this.img,
      required this.placeName,
      required this.location,
      required this.rating});

  @override
  State<PlaceCards> createState() => _PlaceCardsState();
}

class _PlaceCardsState extends State<PlaceCards> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        boxShadow: const [],
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      height: height * 0.28,
      width: width * 0.67,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(20), topStart: Radius.circular(20)),
                child: Image.asset(
                    height: height * 0.18,
                    width: width * 0.67,
                    fit: BoxFit.fitWidth,
                    widget.img),
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Row(
                      children: [
                        Icon(
                          Icons.save,
                          color: Colors.white.withOpacity(0.9),
                          size: 20,
                        ),
                        Text(
                          " Save",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  widget.placeName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      size: 22,
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      widget.rating,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: height * 0.01),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0xff5D94FF),
              ),
              Text(
                " ${widget.location}",
                style: TextStyle(color: Colors.black54),
              )
            ],
          )
        ],
      ),
    );
  }
}
