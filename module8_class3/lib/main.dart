import 'package:flutter/material.dart';

/// Navigation

// Route
// Route to Route Navigation
// Navigator
// Stack

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context){
                          return Profile(username: 'Rabbi',);
                        }
                    )
                );
              },
              child: Text('Go to profile'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context){
                          return Setting();
                        }
                    )
                );
              },
              child: Text('Go to Setting'),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {

  Profile({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text('Usernamaxasdsdasde'),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context){
                          return Home();
                        }
                    )
                );
              },
              child: Text('Back'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                      (predicate) => false,
                );
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),

    );
  }
}


class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),

      body: Center(
        child: Column(

          children: [

            //go to profile

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context){
                          return Profile(username: 'usernamessss');
                        }
                    )
                );
              },
              child: Text('Move Profile'),
            ),


          ],

        ),
      ),

    );
  }
}