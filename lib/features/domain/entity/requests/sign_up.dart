
import 'package:equatable/equatable.dart';

class SignUpRequestEntity extends Equatable {
  final int imei;
  final String passportSeries;
  final String userName;
  final String password;
  final String passwordRepeat;
  final int isCheckPerson;

  const SignUpRequestEntity(this.imei, this.passportSeries, this.userName,
      this.password, this.passwordRepeat, this.isCheckPerson);

  @override
  // TODO: implement props
  List<Object?> get props {
    return [
      imei,
      passportSeries,
      userName,
      password,
      passwordRepeat,
      isCheckPerson
    ];
  }
}
