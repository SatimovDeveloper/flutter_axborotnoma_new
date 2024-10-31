
import 'package:equatable/equatable.dart';

class SignInRequestEntity extends Equatable {
  final String userName;
  final String password;

  const SignInRequestEntity(this.userName, this.password);

  @override
  List<Object?> get props {
    return [userName, password];
  }
}
