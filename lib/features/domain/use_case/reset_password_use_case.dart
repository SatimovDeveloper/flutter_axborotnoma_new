
import '../../../core/resources/data_state.dart';
import '../../../core/usecases/basic_use_case.dart';
import '../entity/requests/reset_password.dart';
import '../entity/response/reset_password_response.dart';
import '../repository/auth_repository.dart';

class ResetPasswordUseCase implements BasicUseCase<DataState<ResetPasswordResponseEntity>,ResetPasswordRequestEntity>{
  final AuthRepository _authRepository;
  ResetPasswordUseCase(this._authRepository);
  @override
  Future<DataState<ResetPasswordResponseEntity>> call({ResetPasswordRequestEntity? params}) {
    return _authRepository.resetPassword(params!);
  }


}