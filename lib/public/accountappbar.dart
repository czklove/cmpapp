import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  Myappbar({Key key, this.title}): super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PreferredSize(
      child: Container(
        color: Color.fromARGB(255, 57, 137, 148),
        child: AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 57, 137, 148),
        ),
      ),
      preferredSize: Size.fromHeight(0.0),
    );
  }
  @override
  Size get preferredSize => getSize();

  Size getSize() {
    return new Size(0, 0);
  }
}