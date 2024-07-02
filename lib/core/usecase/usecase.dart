import 'package:fpdart/fpdart.dart';
import 'package:tdd_blog/core/error/failures.dart';

abstract interface class Usecase<SuccessType, Params>{
  Future<Either<Failure, SuccessType>> call(Params params);
}