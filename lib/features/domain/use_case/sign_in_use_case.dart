
import '../../../core/resources/data_state.dart';
import '../../../core/usecases/basic_use_case.dart';
import '../entity/requests/sign_in.dart';
import '../entity/response/sign_in_response.dart';
import '../repository/auth_repository.dart';

class SignInUseCase implements BasicUseCase<DataState<SignInResponseEntity>,SignInRequestEntity>{
  final AuthRepository _authRepository;
  SignInUseCase(this._authRepository);
  @override
  Future<DataState<SignInResponseEntity>> call({SignInRequestEntity? params}) {
    return _authRepository.signIn(params!);
  }


}