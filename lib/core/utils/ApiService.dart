import 'package:dio/dio.dart';

class Apiservice {
  final Dio dio;
  final BaseUrl = 'https://www.googleapis.com/books/v1/';
  Apiservice(this.dio);
 Future <Map<String,dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$BaseUrl$endPoint');
    return response.data;
  }
}
