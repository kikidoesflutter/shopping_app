class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  static const List<Product> products = [
    Product(
        name: "Apple",
        price: 2.80,
        imageUrl:
            'https://images.unsplash.com/photo-1679065103706-fd39ca1419a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI4fHhqUFI0aGxrQkdBfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    Product(
        name: "Orange",
        price: 5.80,
        imageUrl:
        'https://plus.unsplash.com/premium_photo-1661342576454-e53266e48a06?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY1fHhqUFI0aGxrQkdBfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'  ),
       Product(
        name: "pear",
        price: 1.80,
        imageUrl:
            'https://images.unsplash.com/photo-1679065104523-2fee7fee44c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ3fHhqUFI0aGxrQkdBfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')

  ];
}
