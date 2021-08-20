import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/models/Phone.dart';

class PhoneScreen extends StatelessWidget {
  final Phone phone;
  const PhoneScreen({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(phone.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey,
            constraints: BoxConstraints.expand(
              height: 400,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Text(
                  phone.name,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  phone.brand,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
