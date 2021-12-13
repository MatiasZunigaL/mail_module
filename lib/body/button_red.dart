import 'package:flutter/material.dart';

class ButtonRed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonRed();
  }
}

class _ButtonRed extends State<ButtonRed> {
  bool _pressed = false;

  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: this._pressed ? Text("Desechar correo") : Text("Deshacer")));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.red,
        mini: true,
        tooltip: "mail",
        onPressed: onPressedFav,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ));
  }
}
