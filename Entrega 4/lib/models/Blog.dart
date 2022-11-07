class Blog {
  final String? title, description, image;

  Blog({this.title, this.description, this.image});
}

List<Blog> blogPosts = [
  Blog(
    image: "assets/images/0.png",
    title: "Bee Corp",
    description:
        "Want to relax and just think about honey? Then this game is for you!",
  ),
];
