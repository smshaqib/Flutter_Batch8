import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});


  static const String name = '/add-new-product';

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {

  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _addNewProductInProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: const Text('Add New Product'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _buildProductForm(),
        ),
      ),

    );
  }

  Widget _buildProductForm() {
    return Form(

      key: _formkey,
      child: Column(

        children: [
          TextFormField(
            controller: _nameTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: 'Name',
              labelText: 'Product Name',
            ),

            validator: (String? value){

              if(value?.trim().isEmpty ?? true){
                return 'Enter Product Name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _priceTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Price',
              labelText: 'Product Price',
            ),

            validator: (String? value){

              if(value?.trim().isEmpty ?? true){
                return 'Enter Product Price';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _totalPriceTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Total Price',
              labelText: 'Product Total Price',
            ),

            validator: (String? value){

              if(value?.trim().isEmpty ?? true){
                return 'Enter Product Total Price';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _quantityTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Quantity',
              labelText: 'Product Quantity',
            ),

            validator: (String? value){

              if(value?.trim().isEmpty ?? true){
                return 'Enter Product Quantity';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _codeTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: 'Code',
              labelText: 'Product Code',
            ),

            validator: (String? value){

              if(value?.trim().isEmpty ?? true){
                return 'Enter Product Code';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _imageTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: 'Image URL',
              labelText: 'Product Image',
            ),

            validator: (String? value){

              if(value?.trim().isEmpty ?? true){
                return 'Enter Product Image';
              }
              return null;
            },
          ),

          const SizedBox(height: 16,),
          Visibility(
            visible: _addNewProductInProgress==false,
            replacement: Center(

              child: CircularProgressIndicator(),
            ),
            child: ElevatedButton(
              onPressed: (){

                if(_formkey.currentState!.validate()){

                  _addNewProduct();

                }
              },
              child: Text('Add Product'),
            ),
          ),
        ],

      ),
    );
  }


  Future<void> _addNewProduct() async{
    _addNewProductInProgress = true;

    setState(() {

    });

    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');


    Map<String, dynamic> requestBody = {
      "ProductName": _nameTEController.text.trim(),
      "ProductCode": _codeTEController.text.trim(),
      "Img": _imageTEController.text.trim(),
      "UnitPrice": _priceTEController.text.trim(),
      "Qty": _quantityTEController.text.trim(),
      "TotalPrice": _totalPriceTEController.text.trim(),
    };

    Response response = await post(

      uri,

      headers: {
        'Content-type': 'application/json'
      },

      body: jsonEncode(requestBody),
    );

    print(response.statusCode);
    print(response.body);
    _addNewProductInProgress = false;

    setState(() {

    });

    if(response.statusCode==200){

      _clearTextField();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('New Product Added!'),
        ),
      );

    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(

        const SnackBar(
          content: Text('New Product Add failed! Try again'),
        ),
      );
    }



  }

  void _clearTextField(){

    _nameTEController.clear();
    _codeTEController.clear();
    _priceTEController.clear();
    _totalPriceTEController.clear();
    _imageTEController.clear();
    _quantityTEController.clear();

  }

  @override
  void dispose() {

    _nameTEController.dispose();
    _codeTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    _imageTEController.dispose();
    _quantityTEController.dispose();

    super.dispose();
  }

}
