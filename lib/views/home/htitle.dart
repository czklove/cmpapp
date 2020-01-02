import 'package:flutter/material.dart';

class Htitle extends StatelessWidget {
  
  Htitle({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
          flex: 0,
          child: Container(
            color: Color.fromARGB(255, 40, 183, 163),
            width: 8,
            height: 16,
          )
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 51, 51, 51), 
              ),
            ),
            color: Color.fromARGB(255, 244, 244, 244),
            padding: new EdgeInsets.fromLTRB(10, 15, 10, 15),
          )
        ),
        Expanded(
          flex: 0,
          child: Container(
            child: Text(
              "more >",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 151, 151, 151), 
              ),
            ),
            color: Color.fromARGB(255, 244, 244, 244),
            padding: new EdgeInsets.fromLTRB(10, 15, 10, 15)
          )
        ),
      ],
    );
  }
}