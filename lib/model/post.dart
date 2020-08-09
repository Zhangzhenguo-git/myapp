class Post{
  final String title;
  final String author;
  final String imageUrl;

  /**
   * 带参构造方法
   */
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });
}
/**
 * 创建一个列表数组
 */
final List<Post> posts=[
  Post(
      title: "数据1",
      author: "作者1",
      imageUrl: "https://fanyiapp.cdn.bcebos.com/cms/image/58eb5ccdedfd017daa2e7d4e48d43891.jpg"
  ),
  Post(
      title: "数据2",
      author: "作者2",
      imageUrl: "https://fanyiapp.cdn.bcebos.com/cms/image/58eb5ccdedfd017daa2e7d4e48d43891.jpg"
  ),
  Post(
      title: "数据3",
      author: "作者3",
      imageUrl: "https://fanyiapp.cdn.bcebos.com/cms/image/58eb5ccdedfd017daa2e7d4e48d43891.jpg"
  ),
  Post(
      title: "数据4",
      author: "作者4",
      imageUrl: "https://fanyiapp.cdn.bcebos.com/cms/image/58eb5ccdedfd017daa2e7d4e48d43891.jpg"
  ),
  Post(
      title: "数据5",
      author: "作者5",
      imageUrl: "https://fanyiapp.cdn.bcebos.com/cms/image/58eb5ccdedfd017daa2e7d4e48d43891.jpg"
  ),
  Post(
      title: "数据6",
      author: "作者6",
      imageUrl: "https://fanyiapp.cdn.bcebos.com/cms/image/58eb5ccdedfd017daa2e7d4e48d43891.jpg"
  ),
];