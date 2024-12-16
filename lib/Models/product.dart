class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String category;
  final double rating;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.category,
    required this.rating,
  });
}

List<Product> products = [
  Product(
    name: 'Coca-Cola',
    imageUrl: 'assets/images/chips.png',
    price: 2.4,
    category: 'Chips',
    rating: 4.5,
  ),
  Product(
    name: 'Doritos',
    imageUrl: 'assets/images/water.png',
    price: 1.3,
    category: 'Soft Drinks',
    rating: 4.0,
  ),
];
