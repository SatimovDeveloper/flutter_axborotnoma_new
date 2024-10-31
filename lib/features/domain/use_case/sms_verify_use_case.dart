

import '../../../core/resources/data_state.dart';
import '../../../core/usecases/basic_use_case.dart';
import '../entity/requests/sms_verify.dart';
import '../entity/response/sms_verify_response.dart';
import '../repository/auth_repository.dart';

class SmsVerifyUseCase
    implements
        BasicUseCase<DataState<SmsVerifyResponseEntity>,
            SmsVerifyRequestEntity> {
  final AuthRepository _authRepository;

  SmsVerifyUseCase(this._authRepository);

  @override
  Future<DataState<SmsVerifyResponseEntity>> call(
      {SmsVerifyRequestEntity? params}) {
    return _authRepository.smsVerify(params!);
  }
}
