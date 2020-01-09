import 'package:flutter/material.dart';

class CardImg extends StatelessWidget  {

  CardImg({Key key, this.radius, this.imgrurl}) : super(key: key);

  final String imgrurl;
  final double radius;
  @override
  Widget build(BuildContext context) {
    // 
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(radius), 
      ),
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        imgrurl,
        fit: BoxFit.cover,
      ),
    );
  }
}