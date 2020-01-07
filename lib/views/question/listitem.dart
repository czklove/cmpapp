import 'package:flutter/material.dart';
import './../../public/cardimg.dart';

class QuestionListItem extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    // 
    return Container(
      child: Padding(
        padding: new EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 3, 0, 10),
              child: Text(
                "车友问 : 菜油发动机喷油压力不足一定是高压油蹦的问题吗？",
                maxLines: 2,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: CardImg(imgrurl: "images/05_03.gif", radius: 8)
                ),
                Expanded(
                  flex: 1,
                  child: CardImg(imgrurl: "images/05_05.gif", radius: 8)
                ),
                Expanded(
                  flex: 1,
                  child: CardImg(imgrurl: "images/05_07.gif", radius: 8)
                ),
              ],
            ),
            Container(
              height: 15,
              decoration: ShapeDecoration(
                shape: UnderlineInputBorder( borderSide:BorderSide(color: Color.fromARGB(255, 244, 244, 244), style: BorderStyle.solid, width: 1))
              ),
            )
          ],
        ),
      )
    );
  }
}