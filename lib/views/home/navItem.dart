import 'package:flutter/material.dart';

class NavItem extends StatelessWidget  {

  NavItem({Key key, this.title, this.imgrurl}) : super(key: key);

  final String imgrurl;
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          FlatButton(
            child: ClipOval(
              child: Image.asset(
                imgrurl,
                width: 50,
              ),
            ),
            onPressed: () => {
              print("点击了nav导航栏")
            },
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              height: 2
            ),
          )
        ],
      ),
    );
  }
}