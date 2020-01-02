import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CourseItem extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // 
    return Container(
      padding: new EdgeInsets.fromLTRB(15, 5, 15, 0),
      color: Color.fromARGB(255, 244, 244, 244),
      child: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Image.network(
            "http://52.80.232.140/api/ShowPic/Show?vtag=1&ptype=0&vpath=/course/coursetheme/%E6%B1%BD%E8%BD%A6%E6%9C%BA%E4%BF%AE%E5%B7%A5%E4%BB%8E%E5%85%A5%E9%97%A8%E5%88%B0%E7%B2%BE%E9%80%9A%E5%BE%AE%E8%AF%BE.jpg"
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity, //宽度尽可能大
            ),
            child: Container(
              color: Colors.white,
              child:Stack(
                children: <Widget>[
                Text("发动机系统结构介绍与维修", style: TextStyle(
                  height: 3
                ),),
                Positioned (
                  right: 5,
                  child: FlatButton(
                    color: Color.fromARGB(255, 255, 102, 52),
                    child: Text("特价", style: TextStyle(color: Colors.white)),
                    onPressed: () => {
                      print("点击了特价")
                    },
                    padding: new EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}