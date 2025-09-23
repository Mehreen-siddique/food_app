class FoodItemModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final String image;
  final String category;
  final bool isVegetarian;
  final double rating;

  FoodItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    this.isVegetarian = false,
    this.rating = 0.0,
  });

  factory FoodItemModel.fromJson(Map<String, dynamic> json) {
    return FoodItemModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
      image: json['image'] ?? '',
      category: json['category'] ?? '',
      isVegetarian: json['isVegetarian'] ?? false,
      rating: (json['rating'] ?? 0).toDouble(),
    );
  }
}
