import 'package:injectable/injectable.dart';
import '../../domain/repositories/auth_repository.dart';
import 'package:core/core.dart';
import 'package:either_dart/either.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_sources/auth_remote_datasource.dart';


@Injectable(as: AuthRepository)
class AuthRepositoryImp implements AuthRepository {

final AuthRemoteDataSource dataSource;
AuthRepositoryImp({required this.dataSource});

@override
FutureResult<String> get() async {
return Right(await dataSource.get());
}
}





