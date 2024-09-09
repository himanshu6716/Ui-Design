import 'dart:math';

import 'package:flutter/material.dart';
class Overlapping extends StatelessWidget {

   final List<String> Image = [
    'assets/images/images.png',
    'assets/images/download.jpeg',
    'assets/images/download1.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          for(int i = 0; i< Image.length; i++)
            Align(
              widthFactor: 0.5,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(Image[i]),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
class Overlapping2 extends StatelessWidget {

  final List<String> Image = [
    'assets/images/images.png',
    'assets/images/download.jpeg',
    'assets/images/download1.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          for(int i = 0; i< min(Image.length,2); i++)
            Align(
              widthFactor: 0.5,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(Image[i]),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

