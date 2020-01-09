import 'package:flutter/material.dart';
import './public/myappbar.dart';
import './public/mytextfield.dart';
import './views/home/home.dart';
import './views/case/index.dart';
import './views/course/index.dart';
import './views/question/index.dart';
import './views/ring/index.dart';
import './views/error.dart';
import './views/animation/index.dart';
import './router/index.dart';
import './router/config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mcrup',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          backgroundColor: Color.fromARGB(255, 244, 244, 244)),
      home: MyHomePage(title: '汽修帮',nameurl: 'home', selectedIndex: 0),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title,this.nameurl,this.selectedIndex}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final String nameurl;
  final int selectedIndex;
  @override
  _MyHomePageState createState() => _MyHomePageState(nameurl: nameurl,selectedIndex: selectedIndex,title: title);
}

class _MyHomePageState extends State<MyHomePage> {
  // app 退出提示
  Future<bool> _onBackPressed() {
      if(ModalRoute.of(context).isFirst) {
        return showDialog(
        context: context,
        builder: (context) =>
          AlertDialog(
            title: Text('确定退出程序吗?'),
            actions: <Widget>[
              FlatButton(
                  child: Text('暂不'),
                  onPressed: () => Navigator.pop(context, false),
              ),
              FlatButton(
                  child: Text('确定'),
                  onPressed: () => Navigator.pop(context, true),
              ),
            ],
          )
        );
      } else {
        Navigator.of(context).pop();
      }
  }
  _MyHomePageState({this.nameurl,this.selectedIndex,this.title});

  String nameurl = "home";
  String title = "汽修帮";
  int selectedIndex = 0;
  Widget homeview;
  /* 页面滚动 */
  ScrollController scrollController = ScrollController();
  void _scrollToend() {
    scrollController.jumpTo(scrollController.position.minScrollExtent);
  }
  @override
  Widget build(BuildContext context) {      
    switch (nameurl) {
      case "home":
          homeview = Homeview();
        break;
      case "case":
          homeview = CaseView();
        break;
      case "course":
          homeview = CourseView();
        break;
      case "question":
          homeview = QuestionView();
        break;
      case "ring":
          homeview = RingView();
        break;
      case "error":
          homeview = ErrorView();
        break;
      default:
          homeview = ErrorView();
        break;
    }
    // 更新widget 页面回滚到顶部
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: Myappbar(title: title),
        body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Padding(
                child: Container(
                  child: Mytextfiled(),
                ),
                padding: new EdgeInsets.all(20),
              ),
              AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                var tween=Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0));
                //执行缩放动画
                return MySlideTransition(child: child, position: tween.animate(animation));
              },
              child:homeview)
            ])
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
        currentIndex: selectedIndex,
        fixedColor: Color.fromARGB(255, 40, 183, 163),
        onTap: _onItemTapped))
        );
      }
      void _onItemTapped(int index) {
    setState(() {
      print(nameurl);
      selectedIndex = index;
      String urlname = "";
      String title = "";
      switch (index) {
        case 0:
          urlname="home";
          title="汽修帮";
          break;
        case 1:
          urlname="course";
          title="课程";
          break;
        case 2:
          urlname="shopcar";
          title="商城";
          break;
        case 3:
          urlname="usercenter";
          break;
        default:
      }
      if(index != 3)
      {
        setState((){
          this.nameurl = urlname;
          this.title = title;
        });
      } else {
          Navigator.of(context).push(CustomRoute(
          getRoute(urlname)
        )); 
      }
    });
  }
}


