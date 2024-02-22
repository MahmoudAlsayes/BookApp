import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either< Failures, List<BookModel>>> fetchBestSellerBook();

  Future<Either<Failures ,List<BookModel>>> fetchFeaturedBook();
}
