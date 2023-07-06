import 'package:dartz/dartz.dart';
import '../../../../core/execeptions/failure.dart';
import '../repositories/aut_repository.dart';

class GoogleLogOutUsecase{
  final AuthRepository repository;

  const GoogleLogOutUsecase(this.repository);

  Future<Either<Failure,Unit>> call()async{
    return await repository.googleLogOut();
  }
}