
import 'package:equatable/equatable.dart';

class SignUpResponseEntity extends Equatable{

  final String message;

  const SignUpResponseEntity(this.message);

  @override
  // TODO: implement props
  List<Object?> get props {
    return [message];
  }

}