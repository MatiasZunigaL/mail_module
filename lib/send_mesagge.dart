import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class SendMessage extends StatefulWidget {
  @override
  _SendMessage createState() => _SendMessage();
}

class _SendMessage extends State<SendMessage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 2;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = Color(0xFF0760b2);
  // Gradient selectedGradient =
  //     const LinearGradient(colors: [Colors.red, Colors.amber]);

  Color unselectedColor = Color(0xFF0760b2);
  // Gradient unselectedGradient =
  //     const LinearGradient(colors: [Colors.red, Colors.blueGrey]);

  //Sliding bar
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = false;

  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    List<String> _opciones = ["Descartar", "Configuración", "Ayuda"];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: FxText('Redactar',
            fontSize: 20, fontWeight: 600, letterSpacing: 0.15),
        backgroundColor: Colors.white,
        leading: Material(
          child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.white,
                child: const Icon(FeatherIcons.chevronLeft,
                    size: 28, color: Colors.grey),
              )),
        ),
        actions: [
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
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                            width: 60,
                            child: FxText.b1(
                              "De",
                            )),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            controller: TextEditingController(
                                text: "xxxxxx@global.komatsu"),
                          ),
                        ),
                        Icon(
                          MdiIcons.chevronDown,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 1,
                    height: 0,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 60,
                          child: FxText.b1(
                            "Para",
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Icon(MdiIcons.chevronDown,
                            color: Theme.of(context).colorScheme.onBackground)
                      ],
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 1,
                    height: 0,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Asunto"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 1,
                    height: 0,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Redactar un correo"),
                            maxLines: 10,
                            minLines: 1,
                            keyboardType: TextInputType.multiline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.white,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
          _pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOutQuad);
        },
        iconSize: 30,
        activeColor: Color(0xFF01579B),
        inactiveColor: Colors.grey,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.attachment,
            title: 'Adjuntar',
          ),
          BarItem(
            icon: Icons.send,
            title: 'Enviar',
          ),

          /// Add more BarItem if you want
        ],
      ),

      //Floating Navigation Bar
      /*FloatingNavbar(
        backgroundColor: Colors.grey[100],
        selectedItemColor: Color(0xFF0760b2),
        unselectedItemColor: Colors.black,
        onTap: (int val) => setState(() => _selectedIndex = val),
        currentIndex: _selectedIndex,

        //currentIndex: 0,
        items: [
          FloatingNavbarItem(icon: Icons.attach_file, title: 'Adjuntar'),
          FloatingNavbarItem(icon: Icons.send, title: 'Enviar'),
        ],
      ),

      //SnakeNAvigationBar
      SnakeNavigationBar.color(
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,
        backgroundColor: Colors.grey[100],

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: Color(0xFF0760b2),

        ///configuration for SnakeNavigationBar.gradient
        //snakeViewGradient: selectedGradient,
        //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        //unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_file),
            label: 'Adjuntar',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Enviar')
        ],
      ), //BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.attach_file),
      //       label: 'Adjuntar',
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Enviar')
      //   ],
      */
      // currentIndex: _selectedIndex,
      // selectedItemColor: Color(0xFF0760b2),
      // onTap: _onItemTapped,
    );
  }
}
