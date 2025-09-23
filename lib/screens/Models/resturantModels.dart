class RestaurantModel {
  final String id;
  final String name;
  final String description;
  final String image;
  final double rating;
  final int reviewCount;
  final String deliveryTime;
  final double deliveryFee;
  final List<String> categories;
  final List<FoodItemModel> menuItems;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.rating,
    required this.reviewCount,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.categories,
    required this.menuItems,
  });
  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      image: json['image'] ?? '',
      rating: (json['rating'] ?? 0).toDouble(),
      reviewCount: json['reviewCount'] ?? 0,
      deliveryTime: json['deliveryTime'] ?? '',
      deliveryFee: (json['deliveryFee'] ?? 0).toDouble(),
      categories: List<String>.from(json['categories'] ?? []),
      menuItems: (json['menuItems'] as List<dynamic>? ?? [])
          .map((item) => FoodItemModel.fromJson(item))
          .toList(),
    );
  }
}