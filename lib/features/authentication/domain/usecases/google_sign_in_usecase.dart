import 'package:dartz/dartz.dart';
import 'package:techtack/features/authentication/domain/repositories/aut_repository.dart';
import '../../../../core/execeptions/failure.dart';
import '../entities/user.dart';

class GoogleSignInUsecase{
  final AuthRepository repository;

  const GoogleSignInUsecase(this.repository);

  Future<Either<Failure,User>> call({required String email,required String password})async{
    return await repository.googleSignIn(email: email,password: password);
  }
}