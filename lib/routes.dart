import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';
import 'screens/catalogs_page.dart';
import 'screens/favorites_page.dart';
import 'screens/cart_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return {
    '/': (context) => WelcomePage(),
    '/catalogs': (context) => CatalogsPage(),
    '/favorites': (context) => FavoritesPage(),
    '/cart': (context) => CartPage(),
  };
}
