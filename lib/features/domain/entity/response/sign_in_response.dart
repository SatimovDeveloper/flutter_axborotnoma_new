
import 'package:equatable/equatable.dart';

class SignInResponseEntity extends Equatable{

  final String message;

  const SignInResponseEntity(this.message);

  @override
  // TODO: implement props
  List<Object?> get props {
    return [message];
  }

}