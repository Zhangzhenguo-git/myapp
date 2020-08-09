import 'package:flutter/material.dart';
import 'model/post.dart';

void main() {
  runApp(MaterialApp(
    title: '导航的数据传递和接受',
//    定义商品列表页面组件进行传值
    home: Home(),
//    主题
    theme: ThemeData(
//      主样本
      primarySwatch:Colors.yellow
    ),
  ));
}

class Home extends StatelessWidget {

  Widget postItemBuilder(BuildContext context,int index){
//    小部件(布局)
    return Container(
      color: Colors.white,
      margin:EdgeInsets.all(8.0),
//      垂直布局
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
//          View间间隔函数
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height:16.0)
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Home小组件"),
      ),
      body: ListView.builder(itemBuilder: postItemBuilder,itemCount: posts.length,),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是Hello小组件'),

      ),
      body: Center(

      ),
    );
  }
}






