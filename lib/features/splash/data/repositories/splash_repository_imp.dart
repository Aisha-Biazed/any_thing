import 'package:injectable/injectable.dart';
import '../../domain/repositories/splash_repository.dart';
import 'package:core/core.dart';
import 'package:either_dart/either.dart';
import '../../domain/repositories/splash_repository.dart';
import '../data_sources/splash_remote_datasource.dart';


@Injectable(as: SplashRepository)
class SplashRepositoryImp implements SplashRepository {

final SplashRemoteDataSource dataSource;
SplashRepositoryImp({required this.dataSource});

@override
FutureResult<String> get() async {
return Right(await dataSource.get());
}
}





