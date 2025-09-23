import 'package:flutter/material.dart';
import 'package:food_app/screens/auth/Login_Screen.dart';

import '../screens/splashScreen.dart';


class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String restaurantDetail = '/restaurant-detail';
  static const String cart = '/cart';
  static const String profile = '/profile';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    login: (context) => const LoginScreen(),
    // signup: (context) => const SignupScreen(),
    // home: (context) => const HomeScreen(),
    // restaurantDetail: (context) => const RestaurantDetailScreen(),
    // cart: (context) => const CartScreen(),
    // profile: (context) => const ProfileScreen(),
  };
}
