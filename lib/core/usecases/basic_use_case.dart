
abstract class BasicUseCase<Type,Params>{
  Future<Type> call({Params params});
}