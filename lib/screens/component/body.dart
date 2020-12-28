import 'package:flutter/material.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Warteg\nNusantara".toUpperCase(),
            style: TextStyle(
                fontFamily: "Ambit",
                fontSize: 70,
                color: Colors.black,
                fontWeight: FontWeight.w900),
          ),
          Text(
            "Kemajuan teknologi khususnya di Warteg Nusantara kini\ntelah bertambah tidak hanya fungsi sentuh pada kaca warteg\ntapi juga sudah mengikuti teknologi 4.0 diantaranya\nIOT, Big Data, System Integration dan lainnya",
            style: TextStyle(
                fontFamily: "Ambit",
                fontSize: 18,
                color: Colors.black.withOpacity(0.34),
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
