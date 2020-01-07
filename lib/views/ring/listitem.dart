import 'package:flutter/material.dart';

class RingListItem extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    // 
    return Container(
      child: Padding(
        padding: new EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Column(
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(8), 
                    ),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      "http://52.80.232.140/api/ShowPic/Show?vtag=1&ptype=0&vpath=/course/coursetheme/%E6%B1%BD%E8%BD%A6%E7%94%B5%E5%B7%A5%E4%BB%8E%E5%85%A5%E9%97%A8%E5%88%B0%E7%B2%BE%E9%80%9A%E5%BE%AE%E8%AF%BE.jpg",
                      height: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: new EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "上海宝马5系群",
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text(
                                "成员 : 136人",
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  height: 2.7,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                child: Container(
                                  height: 50,
                                  width: 80,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                                  child: Padding(
                                    child: FlatButton(
                                      color: Color.fromARGB(255, 41, 184, 164),
                                      child: Row(
                                        children: <Widget>[
                                          Text("  "),
                                          Icon(
                                            Icons.chat,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          Text(" 聊天 ", style: TextStyle(color: Colors.white))
                                        ],
                                      ),
                                      onPressed: () => {
                                        print("点击了特价")
                                      },
                                      padding: new EdgeInsets.all(1),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                                    ),
                                    padding: new EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  )
                                ),
                                alignment: Alignment.centerRight,
                              )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
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