import 'package:dio/dio.dart';
import 'package:ubuni_phone_app/api/json_parsers/json_parser.dart';

/// client module to make network requests to the api
class HttpClient {
  final String endpoint;
  const HttpClient({required this.endpoint});

  static final _client = Dio(
    BaseOptions(
      baseUrl: 'https://www.paa.ubuni.co.tz/',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  );

  Future<T> executeGet<T>(JsonParser<T> parser) async {
    final response = await _client.get<String>(endpoint);
    print(response);
    return await parser.parseFromJson(response.data!);
  }
}
