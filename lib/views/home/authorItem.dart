import 'package:flutter/material.dart';

class AuthorItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Padding(
          padding: new EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(8), 
            ),
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: new EdgeInsets.fromLTRB(0, 35, 0, 15),
                    child: ClipOval(
                      child:Image.network(
                        'http://52.80.232.140/api/ShowPic/Show?vtag=1&ptype=0&vpath=//author//17f0a206-b130-43e8-a7fc-a224598596e5//17f0a206-b130-43e8-a7fc-a224598596e5.png',
                        width: 80,
                        height: 80,
                      )
                    ),
                  )
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: new EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        "汽修庄家  王志",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ),
                    Padding(
                      padding: new EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        "5.0 | 4600个回答",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey
                        ),
                      )
                    ),
                    Container(
                      height: 10,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Padding(
            padding: new EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Container(
              height: 50,
              width: 64,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Padding(
                child: FlatButton(
                  color: Color.fromARGB(255, 255, 102, 52),
                  child: Text("提问", style: TextStyle(color: Colors.white)),
                  onPressed: () => {
                    print("点击了特价")
                  },
                  padding: new EdgeInsets.all(1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                ),
                padding: new EdgeInsets.fromLTRB(0, 0, 10, 0),
              )
            ),
          ),
          bottom: -10
        )
      ],
    );
  }
}