import 'package:dio/dio.dart';
import 'package:q3_test/constants/api_constants.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response?> getPostData() async {
    try {
      final Response response = await _dio.get("$baseUrl$posts");
      return response;
    } catch (err) {
      print("$err message");
    }
    return null;
  }
}
