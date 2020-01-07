import './../main.dart';
import './../views/account/index.dart';

var routes = {
  'home' : MyHomePage(title: '汽修帮',nameurl: 'home',selectedIndex: 0),
  'case': MyHomePage(title: '案列库',nameurl: 'case', selectedIndex: 0),
  'course': MyHomePage(title: '课程',nameurl: 'course', selectedIndex: 1),
  'question': MyHomePage(title: '问答',nameurl: 'question', selectedIndex: 0),
  'ring': MyHomePage(title: '车友圈',nameurl: 'ring', selectedIndex: 0),
  'error': MyHomePage(title: '错误页',nameurl: 'error', selectedIndex: 0),
  'usercenter' : AccountHomeView(title: '登录页',name: 'account'),
};

getRoute (String name) {
  var route = routes[name];
  print(route);
  if(route != null) {
    return route;
  } else {
    return routes["error"];
  }
}