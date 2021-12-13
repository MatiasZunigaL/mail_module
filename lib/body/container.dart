import 'package:flutter/material.dart';
import 'package:mail_module/body/photo.dart';
import 'package:mail_module/body/information.dart';
import 'package:mail_module/body/button.dart';
import 'package:mail_module/body/button_red.dart';

class mailContainer extends StatelessWidget {
  String photoPath;
  String name, details;

  mailContainer(this.photoPath, this.name, this.details);

  Widget build(BuildContext context) {
    final artCont = Card(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
        Row(
          children: [
            Photo(photoPath),
            Information(name, details),
            Button(),
            ButtonRed()
          ],
        )
      ]),
    );
    return artCont;
  }
}
