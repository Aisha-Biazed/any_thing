import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:core/core.dart';

@injectable
class SplashRemoteDataSource {

SplashRemoteDataSource({required this.dio});
final Dio dio;


Future<String> get() async {
return throwAppException(() async {
final result = await dio.get("");
return result.data;
});
}

}
