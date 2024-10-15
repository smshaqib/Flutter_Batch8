import 'package:flutter/material.dart';


// reformat
// ctrl + shift+l
// Suggestion
// ctl + space

void main(){
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Hello World App',

      home: Scaffold(

        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),

        body: Center(
          child: Text('Hello World',

              textAlign: TextAlign.left,

              maxLines: 1,

              style:TextStyle(

                fontSize: 28,
                color: Colors.red,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.9,
                height: 3,
                //backgroundColor: Colors.black,
                wordSpacing: 2,
                //decoration: TextDecoration.lineThrough
                overflow: TextOverflow.ellipsis,

            ),
          ),
        ),

      ),

    );

  }



}