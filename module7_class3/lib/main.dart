import 'package:flutter/material.dart';

// Divider, ModalBottomSheet, TextField

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Hello World App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: Center(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            SizedBox(height: 100),

            ElevatedButton(
                onPressed: (){

                  //showAboutDialog(context: context);

                  showModalBottomSheet(

                      isScrollControlled: true,
                      useSafeArea: true,
                      //enableDrag: false,

                      barrierColor: Colors.red,
                      backgroundColor: Colors.green.shade50,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),

                      context: context,
                      builder: (ctx){

                        return Column(

                          children: [

                            Padding(

                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [


                                  Text('Title'),
                                ],

                              ),
                            ),

                            Divider(
                              height: 20,
                              thickness: 4,
                            ),

                            Text('Sample'),


                            Row(

                              children: [

                                ElevatedButton(onPressed: (){}, child: Text('Cancel')),
                                ElevatedButton(onPressed: (){}, child: Text('save')),
                              ],

                            )


                          ],
                        );

                      }

                  );



                },


                child: Text('Show Doalog'),

            ),

            SizedBox(height: 24,),

            Padding(

              padding: EdgeInsets.all(16.0),
                child: TextField(

                  maxLength: 50,
                  onChanged: (String? value){
                    print(value);

                  },

                  controller: TextEditingController(),
                  //obscureText: true,
                  maxLines: 1,
                  keyboardType: TextInputType.phone,
                  enabled: true,

                  decoration: InputDecoration(

                    hintText: 'Phone',
                    hintStyle: TextStyle(

                      fontWeight: FontWeight.w500, color: Colors.grey.shade400,

                    ),
                    labelText: 'Phone Number',
                    
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.person),

                    fillColor: Colors.white54,
                    filled: true,

                    //counterStyle: TextStyle(fontSize: 24),
                    //counterText: '',


                    /*prefix: Column(

                      children: [

                        Text('d'),
                        Text('d'),

                      ],
                    ),
                    suffix: Column(

                      children: [

                        Text('d'),
                        Text('d'),

                      ],
                    ),*/
                    
                   // icon: IconButton(onPressed: (){}, icon: Text('data')),

                    //label: Icon(Icons.access_alarm),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),




                  ),





                ),
            ),

          ],
        ),
      ),
    );
  }
}

// Suggestion => ctl + space