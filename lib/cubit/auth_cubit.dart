

import 'package:bloc/bloc.dart';
import 'package:bringin/models/user_model.dart';
import 'package:equatable/equatable.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
