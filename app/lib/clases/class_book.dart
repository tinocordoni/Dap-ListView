class Book {
  //attributes
  String id;
  String name;
  String author;
  String desc;
  int year;
  String cover;

  //constructor
  Book({
    required this.id,
    required this.name,
    this.author = "Unknown",
    required this.desc,
    required this.year,
    this.cover = "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/330px-Placeholder_view_vector.svg.png"
  });
}
