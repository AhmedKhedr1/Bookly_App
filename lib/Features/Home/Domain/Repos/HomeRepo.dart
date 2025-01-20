// ignore_for_file: file_names
import 'package:bookly_app/Features/Home/Domain/Entities/BookEntities.dart';

abstract class Homerepo {

Future<List<BookEntities>> FetchFeatiredBooks();
Future<List<BookEntities>> FetchNewestBooks();   

}