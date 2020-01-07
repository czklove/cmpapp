import 'package:flutter/material.dart';
import './listitem.dart';

class QuestionView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /**
     * @description: 
     * @param {type} 
     * @return: 
     * @author: czklove
     */    
    // TODO: 
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
          Column(
            children: <Widget>[
              QuestionListItem(),
              QuestionListItem(),
              QuestionListItem(),
              QuestionListItem(),
              QuestionListItem()
            ],
          )
        ],
      )
    );
  }
}