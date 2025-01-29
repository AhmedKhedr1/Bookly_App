import 'package:dio/dio.dart';

class Apiservice {
  final Dio dio;
  final BaseUrl = 'https://www.googleapis.com/books/v1/';
  Apiservice(this.dio);
}
