import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:techtack/core/execeptions/failure.dart';
import 'package:techtack/features/authentication/domain/entities/user.dart';
import 'package:techtack/features/authentication/domain/repositories/aut_repository.dart';

class MockAuthRepository extends Mock implements AuthRepository{}

void main() {
  late MockAuthRepository repository;
  late User user;
  setUpAll((){
    repository = MockAuthRepository();
    user=const User(uid: "123456", firstName: 'Yassine', lastName: 'Ajroud', imgUrl: 'imgUrl.com', city: 'sousse', gender: 'male', courses: []);
  });

  group('google authentication', (){
    test('Google sign in should return User object', ()async{
      when(()=>repository.googleSignIn(email: 'ajroudyassine06@gmail.com',password: 'msk4070')).thenAnswer((invocation) => Future.value(right(user)));
      final result = await repository.googleSignIn(email: 'ajroudyassine06@gmail.com',password: 'msk4070');
      expect(result, right(user));
    });

    test('Google sign in should return Failure', ()async{
      when(()=>repository.googleSignIn(email: 'aaa',password: 'zzz')).thenAnswer((invocation) => Future.value(left(ServerFailure())));
      final result = await repository.googleSignIn(email: 'aaa',password: 'zzz');
      expect(result, left(ServerFailure()));
    });

    test('Google Log in should return User object', ()async{
      when(()=>repository.googleSignIn(email: 'ajroudyassine06@gmail.com',password: 'msk4070')).thenAnswer((invocation) => Future.value(right(user)));
      final result = await repository.googleSignIn(email: 'ajroudyassine06@gmail.com',password: 'msk4070');
      expect(result, right(user));
    });

    test('Google Log in should return Failure', ()async{
      when(()=>repository.googleLogIn(email: 'aaa',password: 'zzz')).thenAnswer((invocation) => Future.value(left(ServerFailure())));
      final result = await repository.googleLogIn(email: 'aaa',password: 'zzz');
      expect(result, left(ServerFailure()));
    });

    test('Google Log out should nothing', ()async{
      when(()=>repository.googleLogOut()).thenAnswer((invocation) => Future.value(right(unit)));
      final result = await repository.googleLogOut();
      expect(result, right(unit));
    });

    test('Google Log out should return Failure', ()async{
      when(()=>repository.googleLogOut()).thenAnswer((invocation) => Future.value(left(ServerFailure())));
      final result = await repository.googleLogOut();
      expect(result, left(ServerFailure()));
    });
  
  });
  
}