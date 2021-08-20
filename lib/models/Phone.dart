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
