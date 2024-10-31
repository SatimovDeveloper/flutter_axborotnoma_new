
import '../../../core/resources/data_state.dart';
import '../entity/requests/reset_password.dart';
import '../entity/requests/sign_in.dart';
import '../entity/requests/sign_up.dart';
import '../entity/requests/sms_verify.dart';
import '../entity/response/reset_password_response.dart';
import '../entity/response/sign_in_response.dart';
import '../entity/response/sign_up_response.dart';
import '../entity/response/sms_verify_response.dart';

abstract class AuthRepository {
  Future<DataState<SignInResponseEntity>> signIn(SignInRequestEntity signInRequest);

  Future<DataState<SignUpResponseEntity>> signUp(SignUpRequestEntity signUpRequest);

  Future<DataState<ResetPasswordResponseEntity>> resetPassword(ResetPasswordRequestEntity resetPasswordRequest);

  Future<DataState<SmsVerifyResponseEntity>> smsVerify(SmsVerifyRequestEntity smsVerifyRequest);
}