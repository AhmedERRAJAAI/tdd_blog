// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tdd_blog/core/usecase/usecase.dart';

class UserSignUp implements Usecase<String, UserSignUpParams>{
  
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
