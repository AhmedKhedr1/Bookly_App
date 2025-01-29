class BookEntities {
  final String Bookid;
  final String? image;
  final String Title;
  final String? AuthorName;
  final num? price;
  final num? rating;

  BookEntities(
    {required this.Bookid,
   required this.image,
   required this.Title,
   required this.AuthorName,
   required this.price,
   required this.rating,}
  );
}
