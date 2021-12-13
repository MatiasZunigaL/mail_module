import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SendMessage extends StatefulWidget {
  @override
  _SendMessage createState() => _SendMessage();
}

class _SendMessage extends State<SendMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: FxText('Redactar', fontWeight: 600, letterSpacing: 0.15),
        backgroundColor: Colors.white,
        leading: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(FeatherIcons.chevronLeft,
                size: 28, color: Colors.grey),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_file),
            label: 'Adjuntar',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Enviar')
        ],
      ),
    );
  }
}
