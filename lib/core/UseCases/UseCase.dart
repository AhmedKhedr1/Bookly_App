
import 'package:bookly_app/Core/Errors/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class usecase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}
class NoParam {}