import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Button();
  }
}

class _Button extends State<Button> {
  bool _pressed = false;

  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: this._pressed ? Text("Abrir correo") : Text("Desechar")));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.green,
        mini: true,
        tooltip: "mail",
        onPressed: onPressedFav,
        child: const Icon(
          Icons.mail,
          color: Colors.white,
        ));
  }
}
