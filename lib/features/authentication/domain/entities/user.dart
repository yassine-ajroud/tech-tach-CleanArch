import 'package:equatable/equatable.dart';
class User extends Equatable{
  final String uid;
  final String firstName;
  final String lastName;
  final String imgUrl;
  final String city;
  final String gender;
  final List<dynamic> courses;

  const User({required this.uid,required this.firstName,required this.lastName,required this.imgUrl,required this.city,required this.gender,required this.courses});

  @override
  // TODO: implement props
  List<Object?> get props => [uid,firstName,lastName,imgUrl,courses,city,gender];
}