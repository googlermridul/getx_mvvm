class AppException implements Exception {
  final String message;
  final String? prefix;

  AppException([this.message = "", this.prefix]);

  @override
  String toString() {
    return "${prefix ?? ''}$message";
  }
}

class NetworkException extends AppException {
  NetworkException([String message = ""]) : super(message, "Network Error: ");
}

class ServerException extends AppException {
  ServerException([String message = ""]) : super(message, "Internal Server Error: ");
}

class CacheException extends AppException {
  CacheException([String message = ""]) : super(message, "Cache Error: ");
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message!, "Error During Communication: ");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([message]) : super(message, "Unauthorised Request: ");
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message!, "Invalid Input: ");
}
