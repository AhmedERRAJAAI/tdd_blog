// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tdd_blog/core/error/failures.dart';
import 'package:tdd_blog/core/usecase/usecase.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tdd_blog/src/auth/domain/repository/auth_repository.dart';

class UserSignUp implements Usecase<String, UserSignUpParams> {
  final AuthRepository authRepository;
  const UserSignUp(this.authRepository);

  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return await authRepository.signupWithEmailPassword(
      name: params.name,
      password: params.password,
      email: params.email,
    );
  }
}

class UserSignUpParams {
  final String email;
  final String password;
  final String name;

  UserSignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
