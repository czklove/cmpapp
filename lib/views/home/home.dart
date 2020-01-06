import 'package:flutter/material.dart';
import '../../public/mytextfield.dart';
import '../home/htitle.dart';
import './courseItem.dart';
import './authorItem.dart';
import './questionItem.dart';
import './navItem.dart';

class Homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 首页内容
    return Container(
      child: Column(
        // Column is also layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            child: Container(
              child: Mytextfiled(),
            ),
            padding: new EdgeInsets.all(20),
          ),
          Container(
            padding: new EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: new Image.network(
              'http://52.80.232.140/api/ShowPic/Show?vtag=1&ptype=0&vpath=/Resource/%E6%AF%94%E4%BA%9A%E8%BF%AA%E7%9B%B4%E6%92%AD%E8%AF%BE684.jpg',
            ),
          ),
          Container(
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
                    ) 
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(height: 100, child: NavItem(title: "案例库",imgrurl: "images/05.gif",)),
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
                    )  
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 244, 244, 244),
            child: Column(
              children: <Widget>[
                Htitle(title: "热门课程"),
                CourseItem(),
                CourseItem(),
                Htitle(title: "大咖名师"),
                Padding(
                  child:Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          child: AuthorItem(),
                          padding: new EdgeInsets.fromLTRB(8, 0, 8, 0),
                        ) 
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          child: AuthorItem(),
                          padding: new EdgeInsets.fromLTRB(8, 0, 8, 0),
                        ) 
                      )
                    ],
                  ),
                  padding: new EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Htitle(title: "精品回答"),
                Padding(
                  padding: new EdgeInsets.fromLTRB(12, 5, 12, 10),
                  child:Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(8), 
                    ),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: <Widget>[
                        QuestionItem(),
                        QuestionItem(),
                      ],
                    ),
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}