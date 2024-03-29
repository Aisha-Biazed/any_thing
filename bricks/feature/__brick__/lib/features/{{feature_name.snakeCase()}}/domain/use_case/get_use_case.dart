import 'package:core/core.dart';

import '../repositories/{{feature_name.snakeCase()}}_repository.dart';


class {{feature_name.pascalCase()}}UseCae implements UseCase<String, NoParams> {
final {{feature_name.pascalCase()}}Repository repository;

{{feature_name.pascalCase()}}UseCae({required this.repository});

@override
FutureResult<String> call(params) async {
return repository.get();
}
}


