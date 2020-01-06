import 'package:flutter/material.dart';

class AuthorItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            child: Stack(
              children: <Widget>[
                Text("汽修")
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            
          ),
        )
      ],
    );
  }
}