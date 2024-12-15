import 'package:flutter/material.dart';
import 'package:module13_class1/ui/screens/add_new_product_screen.dart';
import 'package:module13_class1/ui/widgets/product_item.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: const Text('Product List'),
      ),

      body: ListView.builder(

        itemCount: 10,

        itemBuilder: (context, index){
          
          return ProductItem();
          
        },

      ) ,

      floatingActionButton: FloatingActionButton(
        onPressed: (){

          Navigator.pushNamed(context, AddNewProductScreen.name);

        },

        child: Icon(Icons.add),

      ),
    );
  }
}


