import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:module13_class1/models/product.dart';
import 'package:module13_class1/ui/screens/add_new_product_screen.dart';
import 'package:module13_class1/ui/widgets/product_item.dart';
import 'package:http/http.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

  List<Product> productlist = [];

  bool _getProductListInProgress = false;

  @override
  void initState() {


    super.initState();
    _getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: const Text('Product List'),
      ),

      body: Visibility(
        visible: _getProductListInProgress ==false,
        replacement: Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(


          itemCount: productlist.length,

          itemBuilder: (context, index){

            return ProductItem(

              product: productlist[index],
            );

          },

        ),
      ) ,

      floatingActionButton: FloatingActionButton(
        onPressed: (){

          Navigator.pushNamed(context, AddNewProductScreen.name);

        },

        child: Icon(Icons.add),

      ),
    );
  }

  Future<void> _getProductList() async {
    _getProductListInProgress = true;
    setState(() {

    });
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct');
    Response response = await get(uri);
    print(response.statusCode);
    print(response.body);

    if(response.statusCode ==  200){

      final decodedData = jsonDecode(response.body);

      print(decodedData['status']);
      for (Map<String,dynamic> p in decodedData['data']){

        Product product = Product(

          id: p['_id'],
          productName: p['ProductName'],
          productCode: p['ProductCode'],
          quantity: p['Qty'],
          unitPrice: p['UnitPrice'],
          image: p['img'],
          totalPrice: p['TotalPrice'],
          createData: p['CreateData'],
        );

        productlist.add(product);
      }

      setState(() {

      });

    }

    _getProductListInProgress = false;

    setState(() {

    });

  }
}


