import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tdd_blog/core/error/exceptions.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signupEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<String> loginEmailPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImplimentation implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImplimentation(this.supabaseClient);

  @override
  Future<String> loginEmailPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement loginEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<String> signupEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {
          'name': name
        },
      );
      if (response.user != null) {
        return response.user!.id;
      } else {
        throw ServerException("User is null");
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
