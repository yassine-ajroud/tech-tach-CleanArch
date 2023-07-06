import 'package:dartz/dartz.dart';
import '../../../../core/execeptions/failure.dart';
import '../entities/user.dart';
import '../repositories/aut_repository.dart';

class GoogleLogInUsecase{
  final AuthRepository repository;

  const GoogleLogInUsecase(this.repository);

  Future<Either<Failure,User>> call({required String email,required String password})async{
    return await repository.googleLogIn(email: email,password: password);
  }
}