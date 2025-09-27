import 'package:flutter/material.dart';
import 'package:food_app/screens/Models/resturantModels.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  State<RestaurantDetailsScreen> createState() => _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final RestaurantModel restaurant =
    ModalRoute.of(context)!.settings.arguments as RestaurantModel;
    return Scaffold(
      appBar: AppBar(title: Text(restaurant.name)),

    );
  }
}
