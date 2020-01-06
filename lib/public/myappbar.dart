import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  Myappbar({Key key, this.title}): super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PreferredSize(
      child: Container(
        padding: new EdgeInsets.fromLTRB(0, 13, 0, 0),
        color: Color.fromARGB(255, 68, 76, 87),
        child: AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
          title: Text(
            title,
            textAlign: TextAlign.right,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 68, 76, 87),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              onPressed: () {
                print('object');
              },
            )
          ],
        ),
      ),
      preferredSize: Size.fromHeight(0.0),
    );
  }
  @override
  Size get preferredSize => getSize();

  Size getSize() {
    return new Size(80, 80);
  }
}

