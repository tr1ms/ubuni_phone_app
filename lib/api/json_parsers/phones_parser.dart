import 'package:ubuni_phone_app/api/json_parsers/json_parser.dart';
import 'package:ubuni_phone_app/models/Phone.dart';

/// decodes & parse json to dart phone list type
class PhonesParser extends JsonParser<List<Phone>>
    with ListDecoder<List<Phone>> {
  const PhonesParser();

  @override
  Future<List<Phone>> parseFromJson(String json) async {
    final decoded = decodeJsonList(json);
    return decoded.map((e) => Phone.fromJson(e)).toList();
  }
}
