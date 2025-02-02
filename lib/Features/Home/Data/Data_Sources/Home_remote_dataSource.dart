import 'package:bookly_app/Features/Home/Domain/Entities/BookEntities.dart';

abstract class HomeRemoteDatasource {
  Future<List<BookEntities>> FetchFeatiredBooks();
  Future<List<BookEntities>> FetchNewestBooks();
}
 class HomeRemoteDatasourceimpl extends HomeRemoteDatasource{
  @override
  Future<List<BookEntities>> FetchFeatiredBooks() {
    // TODO: implement FetchFeatiredBooks
    throw UnimplementedError();
  }
 
  @override
  Future<List<BookEntities>> FetchNewestBooks() {
    // TODO: implement FetchNewestBooks
    throw UnimplementedError();
  }

 }