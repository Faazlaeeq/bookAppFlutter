class Book {
  late String id;
  String title;
  String author;
  String description;
  String price;
  String imageUrl;

  Book(
      {required this.title,
      required this.author,
      required this.description,
      required this.price,
      required this.imageUrl}) {
    id = DateTime.now().millisecondsSinceEpoch.toString();
  }
}
