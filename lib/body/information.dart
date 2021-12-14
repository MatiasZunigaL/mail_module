import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable_text/expandable_text.dart';

class Information extends StatelessWidget {
  String name;
  String issue;
  String content;
  String date;
  //String date;

  Information(this.name, this.issue, this.date, this.content);

  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.55;
    final nameMail = Container(
      margin: EdgeInsets.only(
        top: 25,
        left: 10,
      ),
      child: Expanded(
        flex: 2,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: c_width,
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
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
              left: 40,
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
      //width: c_width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: c_width,
              child: Text(
                issue,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey,
                ),
              )

              // textAlign: TextAlign.left,
              ),
          Container(
            width: c_width,
            child: Text(
              content,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style:
                  GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );

    final info = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[nameMail, information],
    );

    return info;
  }
}
