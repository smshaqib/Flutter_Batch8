import 'package:flutter/material.dart';
import 'package:module13_class1/ui/screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: Image.network('https://thumbs.dreamstime.com/b/brand-new-realistic-mobile-phone-black-smartphone-apple-iphone-vector-eps-100341904.jpg'),
      title: const Text('Product name'),

      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text('Product Code: #Code'),
          Text('Quantity: 12'),
          Text('Price: 123'),
          Text('Total: 123123'),




        ],

      ),

      trailing: Wrap(
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.delete),),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, UpdateProductScreen.name);
            },
            icon: const Icon(Icons.edit),),
        ],
      ),
    );

  }
}
