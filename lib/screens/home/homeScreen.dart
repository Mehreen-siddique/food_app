import 'package:flutter/material.dart';
import 'package:food_app/routes/app_routes.dart';
import 'package:food_app/screens/Models/resturantModels.dart';

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

  final List<RestaurantModel> restaurants = [
    RestaurantModel(
      id: '1',
      name: 'Pizza Palace',
      description: 'Authentic Italian pizzas with fresh ingredients',
      image: '',
      rating: 4.5,
      reviewCount: 120,
      deliveryTime: '25-30 min',
      deliveryFee: 2.99,
      categories: ['Pizza', 'Italian'],
      menuItems: [],
    ),
    RestaurantModel(
      id: '2',
      name: 'Burger Barn',
      description: 'Juicy burgers made with premium beef',
      image: '',
      rating: 4.3,
      reviewCount: 89,
      deliveryTime: '20-25 min',
      deliveryFee: 1.99,
      categories: ['Burger', 'American'],
      menuItems: [],
    ),
  ];

  List<RestaurantModel> get filteredRestaurants {
    if (selectedCategory == 'All') return restaurants;
    return restaurants
        .where((r) => r.categories.contains(selectedCategory))
        .toList();
  }

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

      body: Column(
        children: [
          // category chips
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final cat = categories[index];
                final isSelected = cat == selectedCategory;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = cat;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.orange : Colors.white,
                      border: Border.all(
                          color:
                          isSelected ? Colors.orange : Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        cat,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          // restaurant list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: filteredRestaurants.length,
              itemBuilder: (context, index) {
                final r = filteredRestaurants[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    title: Text(r.name),
                    subtitle: Text(r.description),
                    trailing: Text("${r.rating} ⭐"),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.restaurantDetail,
                        arguments: r,
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),


    );
  }
}
