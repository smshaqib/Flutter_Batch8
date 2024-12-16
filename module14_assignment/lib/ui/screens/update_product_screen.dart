import 'package:flutter/material.dart';
import 'package:module14_assignment/models/product.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key, required this.product});


  static const String name = '/update-product';

  final Product product;

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreen();
}

class _UpdateProductScreen extends State<UpdateProductScreen> {

  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();


  @override
  void initState() {

    super.initState();
    _nameTEController.text = widget.product.productName ?? '';
    _priceTEController.text = widget.product.productName ?? '';
    _totalPriceTEController.text = widget.product.productName ?? '';
    _quantityTEController.text = widget.product.productName ?? '';
    _imageTEController.text = widget.product.productName ?? '';
    _codeTEController.text = widget.product.productName ?? '';

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: const Text('Update New Product'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _buildProductForm(),
        ),
      ),

    );
  }

  Form _buildProductForm() {
    return Form(
      child: Column(

        children: [
          TextFormField(
            controller: _nameTEController,
            decoration: const InputDecoration(
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
            decoration: const InputDecoration(
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
            decoration: const InputDecoration(
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
            decoration: const InputDecoration(
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
            decoration: const InputDecoration(
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
            decoration: const InputDecoration(
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
          ElevatedButton(
            onPressed: (){

              _updateProduct();
            },
            child: const Text('Update Product'),
          ),
        ],

      ),
    );
  }

  Future<void> _updateProduct() async{


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
