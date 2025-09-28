import 'package:flutter/material.dart';
import 'package:food_app/screens/Models/resturantModels.dart';


class RestaurantCard extends StatelessWidget {
  final RestaurantModel restaurant;
  final VoidCallback onTap;

  const RestaurantCard({
    Key? key,
    required this.restaurant,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // restaurant image
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.grey[200],
              child: restaurant.image.isNotEmpty
                  ? Image.network(
                restaurant.image,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                const Center(
                  child: Icon(Icons.restaurant, size: 50),
                ),
              )
                  : const Center(
                child: Icon(Icons.restaurant, size: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    restaurant.description,
                    style: const TextStyle(color: Colors.grey),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text("${restaurant.rating} (${restaurant.reviewCount})"),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.access_time, size: 16),
                      const SizedBox(width: 4),
                      Text(restaurant.deliveryTime),
                      const SizedBox(width: 16),
                      const Icon(Icons.delivery_dining, size: 16),
                      const SizedBox(width: 4),
                      Text("\$${restaurant.deliveryFee.toStringAsFixed(2)}"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
