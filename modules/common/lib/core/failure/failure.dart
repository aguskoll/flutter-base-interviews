sealed class Failure {
  String? message;

  Failure(this.message);
}

class Exception extends Failure {
  Exception([super.message]);
}

class ConnectionFailure extends Failure {
  ConnectionFailure([super.message]);
}

class SocketTimeOutFailure extends Failure {
  SocketTimeOutFailure([super.message]);
}

class HttpFailure extends Failure {
  final int? code;

  HttpFailure(this.code, {String? name}) : super(name);
}

class UnexpectedFailure extends Failure {
  UnexpectedFailure([super.message]);
}
