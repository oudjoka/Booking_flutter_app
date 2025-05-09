import 'package:dio/dio.dart';

abstract class Failures {
  final String errmessage;

  const Failures(this.errmessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errmessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificate error');

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
          dioException.response!.statusCode,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceld');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketEception')) {
          return ServerFailure('Connection timeout with ApiServer');
        }
        return ServerFailure('Unaxpected Error, please try again!');
    }
  }

  factory ServerFailure.fromBadResponse(int? statuCode, dynamic response) {
    if (statuCode == 400 || statuCode == 401 || statuCode == 403) {
      return ServerFailure(response['error']['message']);
    }

    if (statuCode == 404) {
      return ServerFailure('Your request not found, please try later!');
    } else if (statuCode == 500) {
      return ServerFailure('Internal Server error, please try later');
    } else {
      return ServerFailure('Oops there was an error, please try again');
    }
  }
}
