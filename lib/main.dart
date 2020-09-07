import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          body: Home(),
        ));
  }
}

//首页展示各个组件
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [MyText(), MyImage(), MyListView(),],
        ),

      ],
    );
  }
}

//文本组件
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        width: 100.0,
        height: 100.0,
        child: Text(
          '各位同学大家好，欢迎来到flutter联盟',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
//          文字的大小倍数
          textScaleFactor: 1.5,
        ));
  }
}

//图片组件-普通图片+圆角图片+ClipOveal快速圆角
class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.network(
            "https://i0.hdslb.com/bfs/sycp/creative_img/202009/c19141dc0ac5502ca640c344c05a5d80.jpg@880w_388h_1c_95q",
            alignment: Alignment.bottomRight,
//        color和colorBlendMode图片混合颜色
            color: Colors.yellow,
            colorBlendMode: BlendMode.colorBurn,
//        图片相对于容器的填充效果
//        fit: BoxFit.cover,
//        图片的平铺效果和fit不能同时使用
//        repeat: ImageRepeat.repeat,
          ),
          decoration: BoxDecoration(
              color: Colors.yellow,
//        borderRadius: BorderRadius.all(Radius.circular(50)),
              borderRadius: BorderRadius.circular(50)),
        ),
//        圆角图片
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://i0.hdslb.com/bfs/sycp/creative_img/202009/c19141dc0ac5502ca640c344c05a5d80.jpg@880w_388h_1c_95q'),
              )),
        ),
//        圆角
        ClipOval(
          child: Image.network(
            'https://i0.hdslb.com/bfs/sycp/creative_img/202009/c19141dc0ac5502ca640c344c05a5d80.jpg@880w_388h_1c_95q',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            'images/111.jpg',
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 300,
      color: Colors.blue,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('列表标题ttttttttt'),
            subtitle: Text('列表详细内容1111111111'),
          ),
          ListTile(
            title: Text('列表标题tttttttttt'),
            subtitle: Text('列表详细内容111111',
//            超出宽度省略
            overflow: TextOverflow.ellipsis,
            ),
          ),
          ListTile(
            title: Text('列表标题ttttttttt'),
            subtitle: Text('列表详细内容1111111111',
            overflow:TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }
}

