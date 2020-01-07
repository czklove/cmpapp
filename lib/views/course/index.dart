import 'package:flutter/material.dart';
import '../home/navItem.dart';
import './courselist.dart';

class CourseView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /**
     * @description: 
     * @param {type} 
     * @return: 
     * @author: czklove
     */    
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Container(
              height: 10,
              color: Color.fromARGB(255, 244, 244, 244),
            ),
          ),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "公开课",imgrurl: "images/01.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "直播课",imgrurl: "images/02.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "答疑课",imgrurl: "images/03.gif",)),
              ),
            ],
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              height: 10,
              color: Color.fromARGB(255, 244, 244, 244),
            ),
          ),
          Column(
            children: <Widget>[
              CourseListItem(),
              CourseListItem(),
              CourseListItem(),
              CourseListItem(),
              CourseListItem()
            ],
          )
        ],
      )
    );
  }
}