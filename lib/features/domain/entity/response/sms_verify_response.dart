
import 'package:equatable/equatable.dart';

class SmsVerifyResponseEntity extends Equatable{

  final String message;

  const SmsVerifyResponseEntity(this.message);

  @override
  // TODO: implement props
  List<Object?> get props {
    return [message];
  }

}