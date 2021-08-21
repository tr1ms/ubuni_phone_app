import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/api/http_client.dart';
import 'package:ubuni_phone_app/api/json_parsers/json_parser.dart';
import 'package:ubuni_phone_app/models/Phone.dart';

class PhoneScreen extends StatefulWidget {
  /// id of a tapped phone item.
  final int id;
  const PhoneScreen({Key? key, required this.id}) : super(key: key);

  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  late final Future<Phone> futurePhone;

  @override
  void initState() {
    super.initState();
    futurePhone = HttpClient(endpoint: '/phones/${widget.id}')
        .executeGet(const PhoneParser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubuni phone app'),
      ),
      body: FutureBuilder(
        future: futurePhone,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Icon(Icons.error),
            );
          }

          if (snapshot.hasData) {
            final phone = snapshot.data as Phone;

            return Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: LayoutBuilder(
                builder: (context, constraints) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      phone.url,
                      fit: BoxFit.cover,
                      width: constraints.maxWidth,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      phone.name,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      phone.brand,
                      style: Theme.of(context).textTheme.headline4,
                    )
                  ],
                ),
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
