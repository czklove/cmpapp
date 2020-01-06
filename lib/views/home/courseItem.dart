import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CourseItem extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // 
    return Padding(
      padding: new EdgeInsets.fromLTRB(12, 5, 12, 0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(8),
          
        ),
        elevation: 0.5,
        clipBehavior: Clip.antiAlias,
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Image.network(
              "http://52.80.232.140/api/ShowPic/Show?vtag=1&ptype=0&vpath=/course/coursetheme/%E6%B1%BD%E8%BD%A6%E6%9C%BA%E4%BF%AE%E5%B7%A5%E4%BB%8E%E5%85%A5%E9%97%A8%E5%88%B0%E7%B2%BE%E9%80%9A%E5%BE%AE%E8%AF%BE.jpg",
            ),
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    padding: new EdgeInsets.fromLTRB(10, 14, 0, 14),
                    child: Text(
                      "发动机系统结构与介绍"
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.white,
                  height: 46,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Padding(
                    child: FlatButton(
                      color: Color.fromARGB(255, 255, 102, 52),
                      child: Text("待价", style: TextStyle(color: Colors.white)),
                      onPressed: () => {
                        print("点击了特价")
                      },
                      padding: new EdgeInsets.all(1),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                    ),
                    padding: new EdgeInsets.fromLTRB(0, 0, 10, 0),
                  )),
                )
              ],
            )
          ]
        )
      ),
    );
  }
}