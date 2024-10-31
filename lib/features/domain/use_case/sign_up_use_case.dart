

import '../../../core/resources/data_state.dart';
import '../../../core/usecases/basic_use_case.dart';
import '../entity/requests/sign_up.dart';
import '../entity/response/sign_up_response.dart';
import '../repository/auth_repository.dart';

class SignUpUseCase implements BasicUseCase<DataState<SignUpResponseEntity>,SignUpRequestEntity>{
  final AuthRepository _authRepository;
  SignUpUseCase(this._authRepository);
  @override
  Future<DataState<SignUpResponseEntity>> call({SignUpRequestEntity? params}) {
    return _authRepository.signUp(params!);
  }


}