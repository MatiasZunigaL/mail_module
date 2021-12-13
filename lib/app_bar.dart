import 'package:flutter/material.dart';
import 'gradientBack.dart';
import 'contentAppBar.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutx/flutx.dart';
import 'package:mail_module/body/container.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchBar();
}

class _SearchBar extends State<SearchBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(FeatherIcons.home),
        ),
        body: Container(
          //height: 200.0,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF4268D3), Color(0xFF584CD1)])),
          key: _scaffoldKey,
          //Llave para identificar elementos
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(
                          top: 100,
                        ),
                        child: ListView(
                          children: <Widget>[
                            mailContainer("assets/img/thedo.jpg", "#EXTERNAL",
                                "Información muy importante"),
                            mailContainer("assets/img/kerokerobonito.jpg",
                                "EXTERNAL", "Importante"),
                            mailContainer("assets/img/frankiecosmos.jpg",
                                "EXTERNAL", "Importante"),
                            mailContainer("assets/img/alvvays.jpg", "EXTERNAL",
                                "Información muy importante"),
                            mailContainer("assets/img/bjork.jpg", "EXTERNAL",
                                "Información muy importante"),
                            mailContainer("assets/img/blink182.jpg", "EXTERNAL",
                                "Información muy importante"),
                            mailContainer("assets/img/crumb.jpg", "EXTERNAL",
                                "Información muy importante"),
                            mailContainer("assets/img/ghostemane.jpg",
                                "EXTERNAL", "Información muy importante"),
                            mailContainer("assets/img/myrkur.jpg", "EXTERNAL",
                                "Información muy importante"),
                            mailContainer("assets/img/lindseystirling.jpg",
                                "EXTERNAL", "Información muy importante"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 16,
                left: 16,
                child: Container(
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: FxSpacing.xy(12, 8),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            child: const Icon(
                              Icons.menu_outlined,
                              size: 24,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: FxSpacing.fromLTRB(16, 0, 8, 0),
                              child: Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Buscar correo...",
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                      isDense: true),
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.green,
                            child: Text(
                              "M",
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
