import 'package:core/core.dart';

import '../repositories/auth_repository.dart';


class AuthUseCae implements UseCase<String, NoParams> {
final AuthRepository repository;

AuthUseCae({required this.repository});

@override
FutureResult<String> call(params) async {
return repository.get();
}
}


