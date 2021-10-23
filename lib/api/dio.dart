import 'package:dio/dio.dart';

const String baseApiUrl = 'http://localhost:8000/api';

Dio dio = Dio(
  BaseOptions(
    baseUrl: baseApiUrl,
    connectTimeout: 5000,
    contentType: 'applicaton/json',
    // headers: {},
  ),
);
