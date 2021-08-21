/// The jarsing library to parse json to dart objects
library json_parser;

export 'phone_parser.dart';
export 'phones_parser.dart';
export 'object_decoder.dart';

abstract class JsonParser<T> {
  const JsonParser();

  Future<T> parseFromJson(String json);
}
