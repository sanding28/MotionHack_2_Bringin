// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

class UserModel extends Equatable {

  final String id;
  final String email;
  final String name;
  final String phoneNumber;

  UserModel({
    required this.id,
    required this.email,
    required this.phoneNumber,
    this.name = '',
  });

  @override
  List<Object?> get props => [id, email, phoneNumber, name];

}