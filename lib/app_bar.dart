import 'package:flutter/material.dart';
import 'gradientBack.dart';
import 'contentAppBar.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutx/flutx.dart';
import 'package:mail_module/body/container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'send_mesagge.dart';

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
          backgroundColor: Color(0xFF0760b2),
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) {
                  return SendMessage();
                },
                fullscreenDialog: true));
          },
          child: Icon(FeatherIcons.penTool),
        ),
        body: Container(
          //height: 200.0,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF0760b2), Color(0xFF081159)])),
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
                            mailContainer(
                                "assets/img/thedo.jpg",
                                "Rafael Novoa",
                                "Información muy importante",
                                "12-dic",
                                "Sint adipisicing veniam tempor culpa duis. Esse tempor elit labore veniam incididunt dolor. Exercitation ut nostrud culpa dolor excepteur eu laborum nostrud esse. Commodo esse tempor ut ipsum ipsum exercitation officia reprehenderit."),
                            mailContainer(
                                "assets/img/kerokerobonito.jpg",
                                "[EXTERNAL] Mar Wang",
                                "Officia sunt commodo cillum nisi qui cillum amet et esse magna aliqua.",
                                "12-dic",
                                "Laboris ipsum ea eu laborum et tempor occaecat proident aliquip adipisicing Lorem non. Do labore esse nisi non consequat deserunt et aliqua. Tempor ad Lorem voluptate minim tempor aute aliqua enim amet pariatur laboris ex. Velit voluptate sunt fugiat ex. Sunt Lorem ea irure aute quis do dolore deserunt nostrud ex."),
                            mailContainer(
                                "assets/img/frankiecosmos.jpg",
                                "Evaristo Jaen",
                                "IMPORTANTE",
                                "12-dic",
                                "Magna dolore cillum ipsum labore magna exercitation deserunt. Ipsum duis deserunt reprehenderit quis dolore elit. Eu sunt dolor amet proident proident anim. Aliqua esse commodo proident deserunt voluptate adipisicing ullamco esse consequat est ullamco sunt. Irure enim exercitation sint cupidatat proident. Ea exercitation non in amet ullamco eu officia nulla. Ut sit exercitation irure ipsum voluptate sunt consequat laboris tempor minim. \nSint voluptate excepteur exercitation velit reprehenderit do voluptate in incididunt cillum. Velit ut dolor deserunt proident sit id Lorem duis amet ea officia minim sit. Nisi ex non do exercitation qui elit velit reprehenderit quis exercitation ea laboris non. Est nulla laborum id duis nostrud ea non. Occaecat mollit dolor commodo dolor est ad mollit minim ullamco esse. Nostrud fugiat ex culpa cillum do culpa enim qui aliqua aliquip excepteur proident eu duis. Aliqua amet commodo qui culpa culpa. Cupidatat sunt occaecat sunt ad laborum nisi do culpa ipsum cupidatat dolor consequat incididunt. \nElit commodo adipisicing velit laboris."),
                            mailContainer(
                                "assets/img/alvvays.jpg",
                                "Azahara Aroca",
                                "Laboris labore excepteur voluptate aute deserunt sit ex aliqua id aliquip.",
                                "12-dic",
                                "Minim ipsum irure et excepteur fugiat ea pariatur. Ullamco quis laborum dolore dolor dolore deserunt dolore. Lorem eu sint ex id irure."),
                            mailContainer(
                                "assets/img/bjork.jpg",
                                "Elisabeth Morcillo",
                                "Información muy importante",
                                "12-dic",
                                "Consequat nulla cupidatat veniam veniam. Quis nulla deserunt aliqua officia nulla commodo velit dolore ullamco sit amet. Qui incididunt laborum nostrud exercitation deserunt dolor occaecat."),
                            mailContainer(
                                "assets/img/blink182.jpg",
                                "Ursula Morilla",
                                "Información muy importante",
                                "12-dic",
                                "Id dolor labore veniam nostrud laborum."),
                            mailContainer(
                                "assets/img/crumb.jpg",
                                "Evaristo Jaen",
                                "Est et exercitation proident veniam pariatur.",
                                "12-dic",
                                "Mollit consectetur esse culpa anim. Voluptate amet qui id aliqua exercitation exercitation ut nisi consectetur nulla aliqua in eiusmod. Consectetur veniam occaecat esse enim non duis veniam aute qui laboris voluptate culpa deserunt veniam."),
                            mailContainer(
                                "assets/img/ghostemane.jpg",
                                "Ruben Villa",
                                "Consequat consectetur nulla excepteur sint nulla tempor. Reprehenderit reprehenderit non id eu qui. Commodo culpa consequat culpa aliquip dolore dolor ut deserunt tempor officia.",
                                "12-dic",
                                "Eu minim aute exercitation deserunt elit Lorem dolor pariatur velit nostrud. Et quis qui pariatur do. Magna laborum aliquip fugiat qui consequat excepteur reprehenderit laboris mollit nostrud magna consequat veniam pariatur. Deserunt consequat culpa irure exercitation id minim laboris ut esse do et duis nostrud."),
                            mailContainer(
                                "assets/img/myrkur.jpg",
                                "Evaristo Jaen",
                                "Información muy importante",
                                "12-dic",
                                "Fugiat fugiat aliquip eiusmod aliqua id ad eiusmod ullamco magna dolore cillum id anim amet. Cillum nulla laborum irure reprehenderit cillum occaecat esse cillum magna elit aliqua. Anim eu incididunt adipisicing voluptate irure duis labore eu eiusmod do proident duis. Voluptate adipisicing cillum officia magna cupidatat Lorem reprehenderit excepteur elit occaecat ipsum dolor."),
                            mailContainer(
                                "assets/img/lindseystirling.jpg",
                                "Domingo Pacheco",
                                "Información muy importante",
                                "12-dic",
                                "Ullamco nisi ad consectetur pariatur ad irure magna. Magna eu magna veniam anim sit laborum tempor adipisicing culpa occaecat. Veniam deserunt voluptate ex deserunt occaecat minim elit est esse velit."),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 5,
                left: 5,
                //child: Container(
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
                            //child: Container(
                            child: const TextField(
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
                            //  ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xFF0760b2),
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
                //),
              )
            ],
          ),
        ));
  }
}
