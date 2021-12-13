import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  String pathImage = "";

  Photo(this.pathImage);

  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 10.0, left: 10, bottom: 10),
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return photo;
  }
}
