abstract class Failures {}

class ServerFailure extends Failures {
  final String message;

  ServerFailure([this.message = 'Server Failure']);

  @override
  String toString() => 'ServerFailure: $message';
}
