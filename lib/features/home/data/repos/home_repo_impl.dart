import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {

  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    // Device is not connected to the internet
    return Left(ServerFailure('No internet connection'));
  }


    try {
      final data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming');
      print(data);
      List<BookModel> books = [];
      for (var item in  data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } on Exception catch (e) {
      
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    // Device is not connected to the internet
    return Left(ServerFailure('No internet connection'));
  }
    try {
      final data = await apiService.get(
          endPoint: 'volumes?Filtssering=free-ebooks&q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } on Exception catch (e) {
      print(e);
      if (e is DioException) {
        print(e.message);
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
    {required String category}
  ) async{
    var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    // Device is not connected to the internet
    return Left(ServerFailure('No internet connection'));
  }
    try {
      final data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } on Exception catch (e) {
      print(e);
      if (e is DioException) {
        print(e.message);
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
