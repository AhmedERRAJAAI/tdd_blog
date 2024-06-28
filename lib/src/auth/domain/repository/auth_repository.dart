import 'package:fpdart/fpdart.dart';
import 'package:tdd_blog/core/error/failures.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signupWithEmailPassword({
    required String name,
    required String password,
    required String email,
  });

  Future<Either<Failure, String>> loginWithEmailPassword({
    required String password,
    required String email,
  });
}
