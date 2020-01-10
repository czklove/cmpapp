import 'package:flutter/material.dart';


class Loading extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    // 
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child:  CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Color.fromARGB(255, 40, 183, 163),
          ),
        )
      ],
    );
  }
}