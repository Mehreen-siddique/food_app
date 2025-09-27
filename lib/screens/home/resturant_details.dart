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
 body: Padding(padding: const EdgeInsets.all(16.0),
 child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [
     Text(restaurant.description,
         style:
         const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
     const SizedBox(height: 16),
     Text("Delivery Time: ${restaurant.deliveryTime}"),
     Text("Delivery Fee: \$${restaurant.deliveryFee.toStringAsFixed(2)}"),
     const SizedBox(height: 20),
     const Text("Menu (Demo):"),
     const SizedBox(height: 10),
     Expanded(
       child: ListView.builder(
         itemCount: restaurant.menuItems.length,
         itemBuilder: (context, index) {
           final item = restaurant.menuItems[index];
           return Card(
             child: ListTile(
               title: Text(item.name),
               subtitle: Text(item.description),
               trailing: Text("\$${item.price}"),
             ),
           );
         },
       ),
     ),
   ],
 ),
 ),
    );
  }
}
