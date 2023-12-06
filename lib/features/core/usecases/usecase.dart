abstract class UserCase<Type,Params>{ //this is to be implemented elsewhere in the user casle folder in domain
  Future<Type> call({Params params});
}
