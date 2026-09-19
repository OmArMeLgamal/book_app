

import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart' show HomeRepo;
import 'package:bookly_app/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
 

  


  @override
  Future<Either<Failure, List<BookModel>>> FetchBestSellerBooks() {
    // TODO: implement FetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> FetchFeaturedBooks() {
    // TODO: implement FetchFeaturedBooks
    throw UnimplementedError();
  }
}
