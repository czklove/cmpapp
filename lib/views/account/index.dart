import 'package:flutter/material.dart';
import './../../router/index.dart';
import './../../router/config.dart';
import '../../public/accountappbar.dart';

class AccountHomeView extends StatefulWidget { 
  AccountHomeView({Key key, this.title,this.name}) : super(key: key);

  final String name;
  final String title;
  @override
  _HomePageState createState() => _HomePageState(name: name,title: title);
}

class _HomePageState extends State<AccountHomeView> {
  _HomePageState({this.name,this.title});

  final name;
  final title;
  Widget homeview;
  @override
  Widget build(BuildContext context) {
    // 
    switch (name) {
      case "account":
          homeview = null;
        break;
    }
    return Scaffold(
      appBar: Myappbar(title: widget.title),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Flex(children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset('images/06_02.gif'),
              )
            ],
            direction: Axis.horizontal,
            )
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border), title: Text("课程")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("商城")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("我的"))
        ],
        currentIndex: 3,
        fixedColor: Color.fromARGB(255, 40, 183, 163),
        onTap: _onItemTapped));
  }
  void _onItemTapped(int index) {
    setState(() {
      String urlname = "";
      switch (index) {
        case 0:
          urlname="home";
          break;
        case 1:
          urlname="course";
          break;
        case 2:
          urlname="shopcar";
          break;
        case 3:
          urlname="usercenter";
          break;
        default:
      }
      Navigator.of(context).push(CustomRoute(
        getRoute(urlname)
      ));
    });
  }
}