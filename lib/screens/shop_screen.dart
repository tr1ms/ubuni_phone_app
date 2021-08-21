import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/api/http_client.dart';
import 'package:ubuni_phone_app/api/json_parsers/json_parser.dart';
import 'package:ubuni_phone_app/models/Phone.dart';
import 'package:ubuni_phone_app/screens/phone_screen.dart';

class ShopScreen extends StatefulWidget {
  ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final phoneList = phones;
  late final Future<List<Phone>> futurePhones;

  @override
  void initState() {
    super.initState();
    futurePhones =
        HttpClient(endpoint: '/phones').executeGet(const PhonesParser());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futurePhones,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: const Text('no items'),
          );
        }

        if (snapshot.hasData) {
          final data = snapshot.data as List<Phone>;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => ListTile(
              // dense: true,
              leading: Image.network(
                data[index].url,
                fit: BoxFit.contain,
                width: 45,
              ),
              title: Text(data[index].name),
              subtitle: Text(data[index].brand),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PhoneScreen(id: data[index].id),
              )),
            ),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
