import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
 
}


class ServerFailure extends Failure {
  // 1. أضف كونستركتور عادي لتمرير الرسالة إلى الكلاس الأب
  ServerFailure(String message) : super(message);

  // 2. تحويل الـ factory إلى static method لإرجاع ServerFailure بناءً على الـ Exception
  static ServerFailure fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');
        
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');
        
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');
        
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');
        
      case DioExceptionType.badResponse:
        // يمكنك هنا معالجة الـ statusCode القادم من السيرفر إذا أردت
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);        
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
        
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
        
      case DioExceptionType.unknown:
      default:
        return ServerFailure('Opps There was an Error, Please try again later');
    }
    
  }
factory ServerFailure.fromResponse(int statusCode, dynamic response) {
  switch (statusCode) {
    case 400:
    case 401:
    case 403:
      return ServerFailure(response['error']?['message'] ?? "Auth error");
    case 404:
      return ServerFailure("Not Found");
    case 500:
      return ServerFailure("Internal Server Error");
    default:
      return ServerFailure("Unexpected error");
  }
}



}
