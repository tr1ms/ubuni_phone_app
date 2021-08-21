import 'package:ubuni_phone_app/api/json_parsers/json_parser.dart';
import 'package:ubuni_phone_app/models/Phone.dart';

/// decodes & parse json to dart phone type
class PhoneParser extends JsonParser<Phone> with ObjectDecoder<Phone> {
  const PhoneParser();

  @override
  Future<Phone> parseFromJson(String json) async {
    final decoded = decodeJsonObject(json);
    return Phone.fromJson(decoded);
  }
}
