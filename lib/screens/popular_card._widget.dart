// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PopularCardWidget extends StatefulWidget {
  final String img;
  final String title;
  final String subtitle;
  final String price;
  final String rating;

  const PopularCardWidget(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.rating});

  @override
  State<PopularCardWidget> createState() => _PopularCardWidgetState();
}

class _PopularCardWidgetState extends State<PopularCardWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        padding: EdgeInsets.all(8),
        width: width * 0.82,
        height: height * 0.13,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //first column image
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                    fit: BoxFit.fitWidth, width: width * 0.28, widget.img)),
            //middle column

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Row(
                  children: [
                    Icon(
                      size: 20,
                      Icons.location_on,
                      color: Color(0xff5D94FF),
                    ),
                    Text(
                      widget.subtitle,
                      style: TextStyle(color: Colors.black45, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "\$${widget.price}",
                        style: TextStyle(
                            color: Color(0xff5D94FF),
                            fontSize: 25,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                      text: " /night",
                      style: TextStyle(color: Color.fromARGB(221, 36, 36, 36)),
                    )
                  ]),
                )
              ],
            ),
            //last column
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                    Text(widget.rating,
                        style: TextStyle(color: Colors.black54)),
                  ],
                ),
                Icon(Icons.save, color: Color(0xff5D94FF))
              ],
            )
          ],
        ),
      ),
    );
  }
}
