class Post {
  const Post({
    required this.title,
    required this.author,
    required this.imgUrl,
  });
  final String title;
  final String author;
  final String imgUrl;
}

final List<Post> posts = [
  Post(
      title: '机票',
      author: '韩玲',
      imgUrl: 'https://file.40017.cn/uticket/strongCache/brand/jipiao.png'),
  Post(
      title: '酒店',
      author: '韩玲',
      imgUrl: 'https://file.40017.cn/uticket/strongCache/brand/jiudian.png'),
  Post(
      title: '品牌',
      author: '韩玲',
      imgUrl: 'https://file.40017.cn/uticket/strongCache/brand/share_img.png'),
];
