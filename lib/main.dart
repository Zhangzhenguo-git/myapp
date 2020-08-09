import 'package:flutter/material.dart';
import 'package:myapp/listviewdemo/listview-demo.dart';
import 'package:myapp/model/post.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '导航的数据传递和接受',
//    定义商品列表页面组件进行传值
    home: Home(),
//    主题
    theme: ThemeData(
//      主样本
        primarySwatch: Colors.yellow,
        //    自定义按钮水波纹
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
//      透明度
        splashColor: Colors.white70),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    TabBar标签形式
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
//        左侧AppBar功能图标
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: 'Navigration',
//          事件
                  onPressed: () => debugPrint("Navigration button is pressed"),
                ),
                title: Text("Navigration"),
//        右侧AppBar功能图标
                actions: [
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () => debugPrint('Search button is pressed'))
                ],
                elevation: 0.0,
                bottom: TabBar(
//                tabBar指示器未选中状态下颜色
                  unselectedLabelColor: Colors.blue,
//                tabBar指示器的底部颜色
                  indicatorColor: Colors.red,
//                tabBar指示器的宽度大小
                  indicatorSize: TabBarIndicatorSize.label,
//                tabBar指示器的高度
                  indicatorWeight: 1.0,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.local_florist),
                    ),
                    Tab(
                      icon: Icon(Icons.change_history),
                    ),
                    Tab(
                      icon: Icon(Icons.directions_bike),
                    )
                  ],
                )),
            body: TabBarView(
              children: [
                Icon(
                  Icons.local_florist,
                  size: 128.0,
                  color: Colors.black12,
                ),
                Icon(
                  Icons.change_history,
                  size: 128.0,
                  color: Colors.black12,
                ),
                Icon(
                  Icons.directions_bike,
                  size: 128.0,
                  color: Colors.black12,
                ),
              ],
            ),
//          Container小容器
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    child: Text('header'.toUpperCase()),
//                    背景样式
                    decoration: BoxDecoration(
                      color: Colors.grey[100]
                    ),
                  ),
                  ListTile(
                    title: Text('message',textAlign: TextAlign.center,),
//                    右侧图标
                    trailing: Icon(Icons.message,color: Colors.yellow,),
                  ),
                  ListTile(
                    title: Text('message',textAlign: TextAlign.center,),
//                    左侧图标
                    leading: Icon(Icons.message,color: Colors.lightBlue,),
                  )
                ],
              ),
            )));
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是Hello小组件'),
      ),
      body: Center(),
    );
  }
}
