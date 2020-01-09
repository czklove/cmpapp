import 'package:flutter/material.dart';

class CourseListItem extends StatelessWidget  {
  CourseListItem({Key key,this.imgurl,this.title,this.time,this.pubisb}) : super(key: key);

  final String imgurl;
  final String title;
  final String time;
  final String pubisb;
  @override
  Widget build(BuildContext context) {
    // 
    return Container(
      child: Padding(
        padding: new EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Column(
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(8), 
                    ),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      this.imgurl,
                      height: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: new EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          this.title,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text(
                                this.time,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  height: 2.7,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                child: Text(
                                  this.pubisb,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    height: 2.7,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                alignment: Alignment.centerRight,
                              )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 15,
              decoration: ShapeDecoration(
                shape: UnderlineInputBorder( borderSide:BorderSide(color: Color.fromARGB(255, 244, 244, 244), style: BorderStyle.solid, width: 1))
              ),
            )
          ],
        ),
      )
    );
  }
}