import 'package:flutter/material.dart';
import 'package:mail_module/body/photo.dart';
import 'package:mail_module/body/information.dart';
import 'package:mail_module/body/button.dart';
import 'package:mail_module/body/button_red.dart';
import 'package:mail_module/message.dart';

class mailContainer extends StatelessWidget {
  String photoPath;
  String name, details, date, content;

  mailContainer(
      this.photoPath, this.name, this.details, this.date, this.content);

  Widget build(BuildContext context) {
    //double c_width = MediaQuery.of(context).size.width * 0.5;
    final artCont = Card(
      margin: const EdgeInsets.only(
        top: 3,
      ),
      child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
        Row(
          children: [
            Photo(photoPath),
            Expanded(
              flex: 1,
              child: Information(name, details, date, content),
            )

            //Button(),
            //ButtonRed()
          ],
        )
      ]),
    );
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute<Null>(
              builder: (BuildContext context) {
                return Message(photoPath, name, details, date, content);
              },
              fullscreenDialog: true));
          print("Container clicked");
        },
        child: AnimatedContainer(
            duration: const Duration(seconds: 2), child: artCont));
    ;
  }
}
