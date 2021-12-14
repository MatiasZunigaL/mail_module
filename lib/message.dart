import 'package:flutter/material.dart';
import 'package:mail_module/body/container.dart';
import 'package:flutx/flutx.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Message extends StatelessWidget {
  String photoPath;
  String name, details, date, content;
  List<String> _opciones = [
    "Mover a",
    "Posponer",
    "Spam",
    "Silenciar",
    "Favoritos"
        "Ayuda"
  ];

  Message(this.photoPath, this.name, this.details, this.date, this.content);

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //title: FxText(name, fontSize: 15, fontWeight: 600, letterSpacing: 0.15),
        backgroundColor: Colors.white,
        leading: Material(
          child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.white,
                child: const Icon(FeatherIcons.chevronLeft,
                    size: 20, color: Colors.grey),
              )),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 24),
            child: const Tooltip(
                message: "Archivar",
                child: Material(
                    child: InkWell(
                        child: Icon(MdiIcons.packageDown,
                            size: 24, color: Colors.grey)))),
          ),
          Container(
              margin: const EdgeInsets.only(right: 24),
              child: const Tooltip(
                  message: "Eliminar",
                  child: Material(
                      child: InkWell(
                          child: Icon(MdiIcons.trashCanOutline,
                              size: 24, color: Colors.grey))))),
          Material(
            color: Colors.white,
            child: InkWell(
              child: PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return _opciones.map((String eleccion) {
                      return PopupMenuItem(
                        value: eleccion,
                        child: FxText(
                          eleccion,
                        ),
                      );
                    }).toList();
                  },
                  icon: const Icon(MdiIcons.dotsVertical, color: Colors.grey),
                  color: Colors.white),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        //padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              child: Text(
                name,
                style: GoogleFonts.lato(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              child: Text(
                date,
                style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey[400]),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15), //Foto de la persona
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(photoPath),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 16, right: 16),
              alignment: FractionalOffset.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Respondiendo")),
                        );
                      },
                      child: Container(
                        height: 35.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0xFF0760b2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]
                            // gradient: const LinearGradient(
                            //     colors: [
                            //       Color(0xFF0760b2),
                            //       Color(0xFF081159)
                            //     ],
                            //     begin: FractionalOffset(0.2, 0.0),
                            //     end: FractionalOffset(1.0, 0.6),
                            //     stops: [0.0, 0.6],
                            //     tileMode: TileMode.clamp)
                            ),
                        child: Center(
                          child: Text("Responder",
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    fontSize: 12.0, color: Colors.white),
                              )),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(left: 87.0, right: 20.0),
                    child: InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Reenviando")),
                        );
                      },
                      child: Container(
                        height: 35.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0xFF0760b2),
                            // gradient: const LinearGradient(
                            //     colors: [
                            //       Color(0xFF0760b2),
                            //       Color(0xFF081159)
                            //     ],
                            //     begin: FractionalOffset(0.2, 0.0),
                            //     end: FractionalOffset(1.0, 0.6),
                            //     stops: [0.0, 0.6],
                            //     tileMode: TileMode.clamp)
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Center(
                          child: Text("Reenviar",
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    fontSize: 12.0, color: Colors.white),
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Contenido del mensaje
            Expanded(
              child: Container(
                //height: 300,
                margin: const EdgeInsets.only(top: 24),
                //padding: EdgeInsets.only(top: 40, left: 4, right: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 15, right: 8, bottom: 16),
                            child: FxText.h6(details, fontWeight: 600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 15, left: 8, right: 20, bottom: 16),
                          child: Icon(
                            MdiIcons.starOutline,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Theme.of(context).dividerColor,
                      thickness: 1,
                      height: 0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.only(top: 15, left: 8, right: 8),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: FxText.b2(content, fontWeight: 500),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
