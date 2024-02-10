import 'package:injectable/injectable.dart';
import '../../domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import 'package:core/core.dart';
import 'package:either_dart/either.dart';
import '../../domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import '../data_sources/{{feature_name.snakeCase()}}_remote_datasource.dart';


@Injectable(as: {{feature_name.pascalCase()}}Repository)
class {{feature_name.pascalCase()}}RepositoryImp implements {{feature_name.pascalCase()}}Repository {

final {{feature_name.pascalCase()}}RemoteDataSource dataSource;
{{feature_name.pascalCase()}}RepositoryImp({required this.dataSource});

@override
FutureResult<String> get() async {
return Right(await dataSource.get());
}
}





