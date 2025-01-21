import 'package:bookly_app/Core/Errors/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class usecase<Type> {
  Future<Either<Failure, Type>> call();
}
