
import 'package:equatable/equatable.dart';

class ResetPasswordRequestEntity extends Equatable{


  final int imei;
  final String userName;

  const ResetPasswordRequestEntity(this.imei, this.userName);

  @override
  List<Object?> get props {
    return [imei,userName];
  }

}