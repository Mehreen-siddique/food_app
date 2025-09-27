import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {


  // dummy cart items
  final List<Map<String, dynamic>> cartItems = [
    {"name": "Pizza", "price": 12.99, "qty": 1},
    {"name": "Burger", "price": 8.99, "qty": 2},
  ];

  double get total =>
      cartItems.fold(0, (sum, item) => sum + (item["price"] * item["qty"]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Cart")),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  title: Text(item["name"]),
                  subtitle: Text("Qty: ${item["qty"]}"),
                  trailing: Text("\$${item["price"]}"),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("Total: \$${total.toStringAsFixed(2)}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Checkout functionality not added")));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 50)),
                  child: const Text("Checkout"),
                ),
              ],
            ),
          ),
        ],
      ),


    );
  }
}
