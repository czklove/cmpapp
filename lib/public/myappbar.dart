import 'package:flutter/material.dart';
import './mytextfield.dart';
class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  Myappbar({Key key, this.title, this.isneedsearch}): super(key: key);

  final String title;
  final bool isneedsearch;
  @override
  Widget build(BuildContext context) {
    // 
    return PreferredSize(
      child: Column(
        children: <Widget>[
          Container(
            padding: new EdgeInsets.fromLTRB(0, 10, 0, 4),
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
              backgroundColor: Color.fromARGB(0, 68, 76, 87),
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
          isneedsearch ? Padding(
            child: Container(
              color: Colors.white,
              child: Mytextfiled(),
            ),
            padding: new EdgeInsets.all(20),
          ) : Container()
        ],
      ),
      preferredSize: Size.fromHeight(0),
    );
  }
  @override
  Size get preferredSize => getSize();

  Size getSize() {
    return new Size(103, 158);
  }
}

