abstract class Failure {
  final String errMassage;

  Failure({required this.errMassage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMassage});
}
