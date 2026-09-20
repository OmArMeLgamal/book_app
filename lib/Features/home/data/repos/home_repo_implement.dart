import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart'
    show HomeRepo;
import 'package:bookly_app/core/errors/Failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImplement(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> FetchBestSellerBooks() async {
    try {
      var data = await apiServices.get(
        endpoint:
            'volumes?filter=free-ebooks&Sorting=newest &q=subject:Programming',
      );

      final List<BookModel> books = [];
      for (final item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> FetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
