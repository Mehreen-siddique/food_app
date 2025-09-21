import 'package:flutter/material.dart';
import 'package:food_app/routes/app_routes.dart';
import 'package:food_app/screens/splashScreen.dart';


void main() {
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
       routes: AppRoutes.routes,
    );
  }
}
