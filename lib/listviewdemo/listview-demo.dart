import 'package:flutter/material.dart';
import 'package:myapp/model/post.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return ListView.builder(
        itemBuilder: postItemBuilder,
        itemCount: posts.length
    );
  }
}