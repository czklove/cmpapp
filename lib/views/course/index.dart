import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../home/navItem.dart';
import './courselist.dart';
import '../../api/Search.dart';
import './model.dart';
import 'package:toast/toast.dart';

class CourseView extends StatelessWidget {
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
          Listwidgets(),
        ],
      )
    );
  }
}

class Listwidgets extends StatefulWidget {
  Listwidgets({Key key}) : super(key: key);
  _PageState createState() => _PageState();
}

class _PageState extends State<Listwidgets> {

  _PageState() {
    Future.delayed(Duration(seconds: 1), (){
        getList("7",1,10);
    });
  }
  List<Widget> listmap = [
    Center(
      child: Text("加载中......"),
    ),
    Container(
      child: Text("无数据"),
    )
  ];
  // 的到list
  getList (String classfic,int page, int size) async {
    var res = await getResourceList<CourseInfo>(classfic,page,size);
    CourseInfo info = CourseInfo.fromJson(res.data);
    print(111111111);
    print(info);
    addappendlist(info);
  }
  // 将list 添加进widget
  addappendlist (CourseInfo info) {
    List<Widget> newlistmap = [];
    if(info.success) {
      info.models.forEach((item) => {
        newlistmap.add(CourseListItem(
          title: item.nAME,
          imgurl: item.iMGURL,
          time: item.tIME,
          pubisb: "机械工业出版社",
        ))
      });
    } else {
      newlistmap = [
        Container(
          child: Text("无数据"),
        )
      ];
    }
    setState(() {
      listlength = newlistmap.length;
      listmap = newlistmap;
    });
  }
  
  var listlength = 2;
  ScrollController _controller = new ScrollController();
  bool showToadd = false; //是否显示“加载组件”按钮

  // 重写初始化方法
  @override
  void initState() {
    super.initState();
    _controller.addListener((){
      print(_controller.offset); //打印滚动位置
    });
  }
  // 防止内存泄漏，掉用_controller.dispose
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Future onRefresh () {
    return Future.delayed(Duration(seconds: 1), () {
      Toast.show('当前已是最新数据', context);
    });
  }
  @override
  Widget build(BuildContext context) {
    //
    return RefreshIndicator(
      onRefresh: this.onRefresh,
      child: Column(
        children: <Widget>[
          Container(
            height: 900.0,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ListView.builder(
              // physics : BouncingScrollPhysics(),
              itemCount: listlength,
              controller: _controller,
              itemBuilder: (context,index) {
                return listmap[index];
              },
            )
          ),
          !showToadd ? Container() : Text("数据正在加载中")
        ],
      ) 
    );
  }
}