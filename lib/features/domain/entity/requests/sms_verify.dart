

import 'package:equatable/equatable.dart';

class SmsVerifyRequestEntity extends Equatable{

  final String smsSend;
  final int phone;
  final int id;
  final int statusCode;

  const SmsVerifyRequestEntity(this.smsSend, this.phone, this.id, this.statusCode);

  @override
  // TODO: implement props
  List<Object?> get props {
    return [smsSend,phone,id,statusCode];
  }
}