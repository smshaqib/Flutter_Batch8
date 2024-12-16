
import 'package:flutter/material.dart';
import 'package:module14_assignment/ui/model/product.dart';
import 'package:module14_assignment/ui/screens/add_product_screen.dart';
import 'package:module14_assignment/ui/screens/product_list_screen.dart';
import 'package:module14_assignment/ui/screens/update_product_screen.dart';

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == '/') {
          widget = const ProductListScreen();
        } else if (settings.name == AddProductScreen.name) {
          widget = const AddProductScreen();
        } else if (settings.name == UpdateProductScreen.name) {
          final Product product = settings.arguments as Product;
          widget = UpdateProductScreen(product: product);
        }

        return MaterialPageRoute(
          builder: (context) {
            return widget;
          },
        );
      },
    );
  }
}
