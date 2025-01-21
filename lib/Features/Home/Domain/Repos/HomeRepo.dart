// ignore_for_file: file_names, non_constant_identifier_names
import 'package:bookly_app/Core/Errors/Failure.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/BookEntities.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<Failure, List<BookEntities>>> FetchFeatiredBooks();
  Future<Either<Failure, List<BookEntities>>> FetchNewestBooks();
}
