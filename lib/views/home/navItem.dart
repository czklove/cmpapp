import 'package:flutter/material.dart';

class NavItem extends StatelessWidget  {

  NavItem({Key key, this.title, this.imgrurl, this.urlname}) : super(key: key);

  final String imgrurl;
  final String title;
  final String urlname;
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
              Navigator.of(context).pushNamed("case", arguments: "hi")
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