
import 'package:equatable/equatable.dart';

class ResetPasswordResponseEntity extends Equatable {
  final String message;

  const ResetPasswordResponseEntity(this.message);

  @override
  // TODO: implement props
  List<Object?> get props {
    return [message];
  }
}
