import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('My Profile'),
        backgroundColor: Colors.amber,

        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.add),),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings),),
          IconButton(onPressed: (){}, icon: Icon(Icons.call),),

        ],


      ),

      body: Center(
        child: Column(

          children: [

            SizedBox(height: 20,),

            CircleAvatar(
              radius: 100,

              child: Icon(
                Icons.icecream_outlined,
                size: 100,
              ),

            ),

            SizedBox(height: 20,),

            Text(
              'Ice Cream is very delicious right?',

              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 40,),

            CircleAvatar(
              radius: 100,

              child: Icon(
                Icons.code,
                size: 100,
              ),

            ),

            SizedBox(height: 20,),

            Text(
              'Programming is not boring if you love it',

              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 40,),


            CircleAvatar(
              radius: 100,

              child: Icon(
                Icons.water_drop_outlined,
                size: 100,
              ),

            ),

            SizedBox(height: 20,),

            Text(
              'This is the Icon of Water Drop',

              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20,),

          ],

        ),
      ),

    );
  }


}