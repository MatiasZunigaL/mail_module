import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  String name;
  String details;

  Information(this.name, this.details);

  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.45;
    final artistName = Container(
      margin: EdgeInsets.only(
        top: 25,
        left: 10,
      ),
      child: Expanded(
        flex: 1,
        child: Text(
          name,
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
          // textAlign: TextAlign.left,
        ),
      ),
    );
    final information = Container(
      margin: EdgeInsets.only(top: 0, left: 10, bottom: 25),
      width: c_width,
      child: Text(
        details,
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: Colors.grey,
        ),
        // textAlign: TextAlign.left,
      ),
    );

    final info = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[artistName, information],
    );

    return info;
  }
}
