import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  static init() {
    dio = Dio(
        BaseOptions(
            baseUrl: "https://jsonplaceholder.typicode.com/",
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