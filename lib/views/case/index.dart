import 'package:flutter/material.dart';
import '../home/navItem.dart';

class CaseView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
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
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "知识问答",imgrurl: "images/04.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "知识问答",imgrurl: "images/04.gif",)),
              ) 
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "案例库",imgrurl: "images/05.gif",urlname: 'case')),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "资料库",imgrurl: "images/06.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "车友圈",imgrurl: "images/07.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "汽修导航",imgrurl: "images/08.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "知识问答",imgrurl: "images/04.gif",)),
              )  
            ],
          ),
        ],
      )
    );
  }
}