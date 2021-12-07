import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();
  static String _url = "https://jsonplaceholder.typicode.com/";
  late Dio _dio;

  static init() {
    dio = Dio(
        BaseOptions(
            baseUrl: _url,
            receiveDataWhenStatusError: true
        )
    );
  }

 static Future<Response> getData({
    required String path})
  async {
  return await  dio.get(path);
  }
}