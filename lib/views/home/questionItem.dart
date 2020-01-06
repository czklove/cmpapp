import 'package:flutter/material.dart';

class QuestionItem extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Padding(
        padding: new EdgeInsets.fromLTRB(8, 15, 8, 0),
        child: Column(
          children: <Widget>[
            Text(
              "车友问 : 菜油发动机喷油压力不足一定是高压油蹦的问题吗？",
              maxLines: 2,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "您好，感谢您的咨询与服务，有没有修打车的半径师傅，我设置了左右约束",
              maxLines: 1,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 2
              ),
              overflow: TextOverflow.ellipsis,
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