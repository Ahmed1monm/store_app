import 'package:flutter/material.dart';
import 'package:store_app/Models/product_model.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/product_details.dart';

void main(List<String> args) {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.routeName,
      routes: {
        ProductDetails.routName: (context) => ProductDetails(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
