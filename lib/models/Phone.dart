/// phone model

class Phone {
  final int id;
  final String name;
  final String brand;
  final String url;

  const Phone(
      {required this.brand,
      required this.url,
      required this.id,
      required this.name});

  factory Phone.fromJson(Map<String, dynamic> json) => Phone(
      brand: json['Brand'],
      url: json['image_url'],
      id: json['id'],
      name: json['name']);

  Map<String, dynamic> toJson() =>
      {"brand": brand, "id": id, "name": name, "image_url": url};
}

// sample phones
var phones = [
  Phone(
      brand: 'Techno',
      url: 'https://www.paa.ubuni.co.tz/techno.jpg',
      id: 1,
      name: 'F1'),
  Phone(
      brand: 'Samsung',
      url: 'https://www.paa.ubuni.co.tz/samsung.jpg',
      id: 2,
      name: 'J5'),
];
