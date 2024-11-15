import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
        title: Center(
          child: Text(
            'Need Blood',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.bloodtype_outlined,
                color: Colors.red,
                size: 100,
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              'Donate Blood',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
