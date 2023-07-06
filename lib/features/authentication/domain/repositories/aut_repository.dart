import 'package:dartz/dartz.dart';
import '../../../../core/execeptions/failure.dart';
import '../entities/user.dart';

abstract class AuthRepository{
  //FireBase Authentication
  Future<Either<Failure,User>> googleSignIn({String email,String password});
  Future<Either<Failure,User>> googleLogIn({String email,String password});
  Future<Either<Failure,Unit>> googleLogOut();
  
}