import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/models/Phone.dart';
import 'package:ubuni_phone_app/screens/phone_screen.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({Key? key}) : super(key: key);

  final phoneList = phones;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: phoneList.length,
      itemBuilder: (context, index) => ListTile(
        leading: const CircleAvatar(),
        title: Text(phones[index].name),
        subtitle: Text(phones[index].brand),
        trailing: const Icon(Icons.arrow_forward),
        dense: true,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PhoneScreen(
                phone: phones[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
