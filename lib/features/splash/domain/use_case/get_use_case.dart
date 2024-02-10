import 'package:core/core.dart';

import '../repositories/splash_repository.dart';


class SplashUseCae implements UseCase<String, NoParams> {
final SplashRepository repository;

SplashUseCae({required this.repository});

@override
FutureResult<String> call(params) async {
return repository.get();
}
}


