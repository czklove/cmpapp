import 'package:flutter/material.dart';
import '../home/navItem.dart';
import './listitem.dart';

class RingView extends StatelessWidget {

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
            padding: new EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Text("车友圈总计 : ",
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "432个",
                        style: TextStyle(
                          color: Color.fromARGB(255, 254, 107, 56),
                          fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  alignment: Alignment.centerRight,
                  width: 120,
                  height: 70,
                  child: Card(
                    color: Color.fromARGB(255, 244, 244, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(8),
                      side: BorderSide(
                        color: Color.fromARGB(255, 41, 184, 164)
                      )
                    ),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "创建车友圈",
                        style: TextStyle(
                          color: Color.fromARGB(255, 41, 184, 164),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
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
              RingListItem(),
              RingListItem(),
              RingListItem(),
              RingListItem(),
              RingListItem()
            ],
          )
        ],
      )
    );
  }
}