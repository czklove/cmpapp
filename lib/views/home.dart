import 'package:flutter/material.dart';
import '../public/mytextfield.dart';

class Homeview extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // 首页内容
    return Center(
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
                      child: Container(height: 90, child: Text('data1'),color: Colors.red,),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(height: 90,child: Text('data2'),color: Colors.blue,),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(height: 90,child: Text('data3'),color: Colors.white,),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(height: 90,child: Text('data4'),color: Colors.pink,)
                    )  
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(height: 90,child: Text('data1'),color: Colors.red,),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(height: 90,child: Text('data2'),color: Colors.blue,),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(height: 90,child: Text('data3'),color: Colors.white,),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(height: 90,child: Text('data4'),color: Colors.pink,)
                    )  
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}