import 'package:tdd_blog/core/error/exceptions.dart';
import 'package:tdd_blog/core/error/failures.dart';
import 'package:tdd_blog/src/auth/data/datasources/auth_remote_data_source.dart';
import 'package:tdd_blog/src/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImplimentation implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepositoryImplimentation(this.remoteDataSource);

  @override
  Future<Either<Failure, String>> loginWithEmailPassword({required String password, required String email}) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signupWithEmailPassword({
    required String name,
    required String password,
    required String email,
  }) async {
    try {
      final userId = await remoteDataSource.signupEmailPassword(
        name: name,
        email: email,
        password: password,
      );
      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
