import 'package:flutter/material.dart';

class CaseListItem extends StatelessWidget  {

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
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "汽车排放超标怎么解决 发动机为期招标排放典型案例分析",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "2019-11-19",
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          height: 2,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(8), 
                    ),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      "http://52.80.232.140/api/ShowPic/Show?vtag=1&ptype=0&vpath=/logicaldb/3a94e17b-105f-4d59-9910-b6d1d96f2c0f/3a94e17b-105f-4d59-9910-b6d1d96f2c0f.jpg",
                      height: 65,
                      fit: BoxFit.cover,
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