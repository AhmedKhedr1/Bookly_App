import 'package:bookly_app/Core/utils/ApiService.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/BookEntities.dart';

abstract class HomeRemoteDatasource {
  Future<List<BookEntities>> FetchFeatiredBooks();
  Future<List<BookEntities>> FetchNewestBooks();
}

class HomeRemoteDatasourceimpl extends HomeRemoteDatasource {
  final Apiservice apiservice;
  HomeRemoteDatasourceimpl(this.apiservice);
  @override
  Future<List<BookEntities>> FetchFeatiredBooks() async {
    var data = await apiservice.get(
        endPoint: 'volumes?q=programming&Filtering=free-ebooks');
    List<BookEntities> books = [];
    for (var bookmap in data['items']) {
      books.add(BookModel.fromJson(bookmap));
    }
    return books;
  }

  @override
  Future<List<BookEntities>> FetchNewestBooks() {
    // TODO: implement FetchNewestBooks
    throw UnimplementedError();
  }
}
