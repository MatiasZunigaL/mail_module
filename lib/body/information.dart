import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatelessWidget {
  String name;
  String details;
  String date;
  //String date;

  Information(this.name, this.details, this.date);

  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.5;
    final nameMail = Container(
      margin: EdgeInsets.only(
        top: 25,
        left: 10,
      ),
      child: Expanded(
        flex: 2,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Container(
            width: c_width,
            child: Text(
              name,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
              // textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 60,
            ),
            margin: EdgeInsets.only(left: 0),
            child: Text(
              date,
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w300)),
            ),
          ),
        ]),
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
      children: <Widget>[nameMail, information],
    );

    return info;
  }
}
