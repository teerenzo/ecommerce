import 'package:flutter/material.dart';
import 'package:mecommerce/common/widgets/buttom_bar.dart';
import 'package:mecommerce/features/address/screens/address_screen.dart';
import 'package:mecommerce/features/admin/screens/add_product_screen.dart';
import 'package:mecommerce/features/auth/screens/auth_screens.dart';
import 'package:mecommerce/features/home/screens/category_deals_screen.dart';
import 'package:mecommerce/features/home/screens/home_screen.dart';
import 'package:mecommerce/features/order_details/screens/order_details.dart';
import 'package:mecommerce/features/product_details/screens/product_details_screen.dart';
import 'package:mecommerce/features/search/screens/search_screen.dart';
import 'package:mecommerce/models/order.dart';
import 'package:mecommerce/models/product.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case ButtomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ButtomBar(),
      );
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealsScreen(
          category: category,
        ),
      );
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );
    case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProductDetailScreen(
          product: product,
        ),
      );
    case AddressScreen.routeName:
    var totalAmount = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AddressScreen(
          totalAmount: totalAmount,
          ),
      );
      case OrderDetailScreen.routeName:
    var order = routeSettings.arguments as Order;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => OrderDetailScreen(
          order: order,
          ),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
