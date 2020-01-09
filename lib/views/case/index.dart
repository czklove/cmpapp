import 'package:flutter/material.dart';
import '../home/navItem.dart';
import './caselistItem.dart';

class CaseView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /**
     * @description: 
     * @param {type} 
     * @return: 
     * @author: czklove
     */    
    // 
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
                child: Container(height: 100, child: NavItem(title: "发动机",imgrurl: "images/02_03.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "汽车车身",imgrurl: "images/02_05.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "汽车保养",imgrurl: "images/02_07.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "轮胎",imgrurl: "images/02_09.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "洗车",imgrurl: "images/02_11.gif",)),
              ) 
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "底盘",imgrurl: "images/02_18.gif",urlname: 'case')),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "电器",imgrurl: "images/02_19.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "机油",imgrurl: "images/02_20.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "变速器",imgrurl: "images/02_21.gif",)),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 100, child: NavItem(title: "分类品牌",imgrurl: "images/02_22.gif",)),
              )  
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
              CaseListItem(),
              CaseListItem(),
              CaseListItem(),
              CaseListItem(),
              CaseListItem()
            ],
          )
        ],
      )
    );
  }
}