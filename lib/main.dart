import 'package:flutter/material.dart';
import 'package:mail_module/header_bar.dart';
import 'app_bar.dart';
import 'gradientBack.dart';
import 'contentAppBar.dart';
import 'package:mail_module/body/container.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 50,
            ),
          ),
          SearchBar(),
        ],
      )),
    );
  }
}
