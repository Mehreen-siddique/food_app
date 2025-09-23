import 'package:flutter/material.dart';
import 'package:food_app/routes/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String selectedCategory = 'All';

  final List<String> categories = [
    'All',
    'Pizza',
    'Burger',
    'Asian',
    'Dessert',
    'Drinks',
  ];

  // final List<RestaurantModel> restaurants = [
  //   RestaurantModel(
  //     id: '1',
  //     name: 'Pizza Palace',
  //     description: 'Authentic Italian pizzas with fresh ingredients',
  //     image: '',
  //     rating: 4.5,
  //     reviewCount: 120,
  //     deliveryTime: '25-30 min',
  //     deliveryFee: 2.99,
  //     categories: ['Pizza', 'Italian'],
  //     menuItems: [],
  //   ),
  //   RestaurantModel(
  //     id: '2',
  //     name: 'Burger Barn',
  //     description: 'Juicy burgers made with premium beef',
  //     image: '',
  //     rating: 4.3,
  //     reviewCount: 89,
  //     deliveryTime: '20-25 min',
  //     deliveryFee: 1.99,
  //     categories: ['Burger', 'American'],
  //     menuItems: [],
  //   ),
  // ];
  //
  // List<RestaurantModel> get filteredRestaurants {
  //   if (selectedCategory == 'All') return restaurants;
  //   return restaurants
  //       .where((r) => r.categories.contains(selectedCategory))
  //       .toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FoodEx"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.cart);
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.profile);
            },
          ),
        ],
      ),


    );
  }
}
