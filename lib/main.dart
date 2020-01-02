import 'package:flutter/material.dart';
import './public/myappbar.dart';
import './views/home/home.dart';

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
      home: MyHomePage(title: '汽修帮'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: Myappbar(title: widget.title),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Homeview(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=>{
          setState((){
            _counter++;
          })
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.book), title: Text("图书")),
            BottomNavigationBarItem(
                icon: Icon(Icons.all_out), title: Text("新闻")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("个人中心"))
          ],
          currentIndex: _selectedIndex,
          fixedColor: Color.fromARGB(255, 40, 183, 163),
          onTap: _onItemTapped));
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
