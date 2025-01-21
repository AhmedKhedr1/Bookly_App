import 'package:bookly_app/Core/Errors/Failure.dart';
import 'package:bookly_app/Core/UseCases/UseCase.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/BookEntities.dart';
import 'package:bookly_app/Features/Home/Domain/Repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';

class FetchfeaturedbooksUsecase extends usecase<List<BookEntities>, NoParam> {
  final Homerepo homerepo;

  FetchfeaturedbooksUsecase(this.homerepo);

  @override
  Future<Either<Failure, List<BookEntities>>> call([NoParam? param]) async {
    // TODO: implement call
    return await homerepo.FetchFeatiredBooks();
  }
}
