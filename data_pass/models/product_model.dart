class ProductModel {
  String? id;
  String? name;
  double? price;
  int quantity = 1;
  String? img;
  String? description;

  ProductModel({this.id, this.name, this.price, this.img, this.description});
}

final List<ProductModel> products = [
  ProductModel(
    id: '1',
    name: 'Apple Watch Series 9',
    price: 399.00,
    img: 'lib/images/images01.jpg',
    description:
        'The latest Apple Watch with S9 chip, health monitoring, always-on Retina display, and fitness tracking.',
  ),
  ProductModel(
    id: '2',
    name: 'Samsung Galaxy Buds 3 Pro',
    price: 249.99,
    img: 'lib/images/images02.jpg',
    description:
        'Premium wireless earbuds with adaptive ANC, hi-fi audio, and ultra-low latency Bluetooth 5.4 connection.',
  ),
  ProductModel(
    id: '3',
    name: 'Anker Nano II 100W GaN Charger',
    price: 79.99,
    img: 'lib/images/images03.jpg',
    description:
        'Compact 100W GaN charger with dual USB-C ports, ideal for fast charging laptops and smartphones.',
  ),
  ProductModel(
    id: '4',
    name: 'DJI Mini 4 Pro Drone',
    price: 759.00,
    img: 'lib/images/images04.jpg',
    description:
        'Lightweight drone under 249g with 4K HDR video, omnidirectional obstacle sensing, and extended flight time.',
  ),
  ProductModel(
    id: '5',
    name: 'Samsung Portable SSD T7 Shield (1TB)',
    price: 99.99,
    img: 'lib/images/images05.jpg',
    description:
        'Rugged, water-resistant portable SSD with up to 1050 MB/s read speeds and shock-resistant design.',
  ),
  ProductModel(
    id: '6',
    name: 'Sony LinkBuds Open-Ear Earphones',
    price: 179.99,
    img: 'lib/images/images06.jpg',
    description:
        'Open-ring design that lets you stay aware of your surroundings while enjoying high-quality sound.',
  ),
  ProductModel(
    id: '7',
    name: 'Logitech MX Vertical Mouse',
    price: 99.99,
    img: 'lib/images/images07.jpg',
    description:
        'Ergonomic vertical mouse that reduces wrist strain by promoting a natural handshake position.',
  ),
  ProductModel(
    id: '8',
    name: 'reMarkable 2 Paper Tablet',
    price: 279.00,
    img: 'lib/images/images08.jpg',
    description:
        'E-ink tablet for handwriting and sketching with a paper-like feel, ideal for distraction-free note-taking.',
  ),
  ProductModel(
    id: '9',
    name: 'Anker Nebula Capsule 3 Projector',
    price: 799.00,
    img: 'lib/images/images09.jpg',
    description:
        'Compact 1080p projector with built-in battery, Dolby sound, and Android TV 11 for streaming anywhere.',
  ),
  ProductModel(
    id: '10',
    name: 'BenQ e-Reading Smart Desk Lamp',
    price: 229.00,
    img: 'lib/images/images10.jpg',
    description:
        'Smart desk lamp with adjustable brightness and color temperature, designed for reading and long desk sessions.',
  ),
];
