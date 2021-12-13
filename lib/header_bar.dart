import 'package:flutter/material.dart';
import 'package:mail_module/app_bar.dart';
import 'app_bar.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(FeatherIcons.chevronLeft),
          ),
        ),
        SearchBar(),
      ],
    );
  }
}
