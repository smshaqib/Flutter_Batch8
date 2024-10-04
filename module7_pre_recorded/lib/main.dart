import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: const Home()
    );
  }
}

class Home extends StatelessWidget{
  const Home({super.key});


  MySnackBar(message, context){


    ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(content: Text(message)),

    );

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(

        title: const Text('MyApp'),
        titleSpacing: 10,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.amber,

        actions: [

          IconButton(onPressed: (){MySnackBar('I am comment', context);}, icon: const Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar('I am search', context);}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar('I am setting', context);}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar('I am email', context);}, icon: const Icon(Icons.email)),
        ],

      ),
      body: const Text('hello'),

      floatingActionButton: FloatingActionButton(

        elevation: 10,
        child: const Icon(Icons.add),

        onPressed: (){
          MySnackBar('I am floating action button', context);
        },

      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: 1,

        //jei index active thakbe item er oita set kora jay

        items: const [

          // 1 tar beshi item dite hobe naile error khabe

          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'contract'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],

        onTap: (int index){

          if(index==0){
            MySnackBar('I am Home bottom nav bar', context);
          }

          if(index==1){
            MySnackBar('I am Message bottom nav bar', context);
          }

          if(index==2){
            MySnackBar('I am Person bottom nav bar', context);
          }
        },

      ),


      drawer: Drawer(

        child: ListView(

          children: [
            DrawerHeader(
                child: UserAccountsDrawerHeader(

                  decoration: const BoxDecoration(color: Colors.blue),
                  accountName: const Text('SM Shaqib', style: TextStyle(color: Colors.black),),
                  accountEmail: const Text('smshaqib@gmail.com'),
                  currentAccountPicture: Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAflBMVEX///9fyfhax/gxufYHW50EWZwDWJxPxfjz+/4IXJ5hhrSi3ftVxvjd5e4AVJrX8P3n9v5HvveG0/nN7P0AT5jf8/140PkATJcARpTS7v245fvE6Py2xtro9v4tqucMs/UARJNOrOAIO4uW2fotu/au3/oGOYnC4PNSfK7v8/fVukePAAADUklEQVR4nO3c21LbMBSFYSuxJVJSUVqDTaEmoS1t3/8F6wNxEluytzvTyd6b9Q+XXPibJaIhHJIEIYQQQgghhBBCCCGEEEIIIYQQQggp6eZ6Qd+vLv24y3twW2rOuZtLP+7yHpwJtQqmCBgWagIGhaqAIaFE4E0UGBAqA46F2oAjoTrgUKgPaOQD46+iAaFGoFEPNOqBRj3QqAca9UCjHmgAZBsRaNQDjXqgUQ806oEGQI4BCCDzvgAIIO8ABJB5AALIPADfE9C4u0s/7vKWAdUvqB6II8ovLAgg8wAEkHkAAsg8AAFkHoAAMg9AAJkHIIDMAxDAuqtFCQTeO3q395yBnyLA7egv8aK5zwAC+L+AK4nAO+3AJPlK/7V0mUA6USyQShQMpBFFAylE4cB5onjgHFEBcJqoAjhFVAKME9UAY8SV+xb+dHnAMDG64K2L/BMoxsAQMQ5cr7dUIh/gmBg9ojWQTOQEHBKnFiQTeQHPiXNAEpEb8JQ4fUSJRH7AI3F+wZYoD3gg0oAzRJ7Ajkg5ol1OHrAhUhecJPIFNkQ6MErkDEySyA9OgsAIkTcwUgQYJOoCBojagCOiPuCAKBK4mgaeEUUC72cmPCXKBG7nhQeiUKAhCDuiUOBqRRE2RLFAmnDtRAJN+w0STbiWCEweHV1Y+Y+Xftx/qSWShFWW5WKJFGGVpRu5RIKwsulmI5c4L+yAcok/qECxxJ/PM0CfHYRSideTxMrb7EBMU6uP2ADfiGmTOmKVe9sSsw6YpsoOag30B2KqkVgV3rdEq5RYlXneEX1r7ImFEmIDjBBlrji8F6uyyHui9z2vfUWVueI5sdoVnbA1nvnqr0mhxMfj+4Zm/1IUb0Rv03QArIkyD2pPrIFl0Zb7/iY88Ylf0exfy7KoP4a8I1A2sVmw5uXZZug7AUo+qO2CuR3zznySV9y/BnkjoFjir5c0xBv75BKfdjSg4HvxqSQNKHrFctYn/V48J0YHVEKc2E8FMbSaknvxqczmzqcCImXABmh1EUNAscQdYcAOKJY4v6LtU0q0VjyxP6gTB9R2b6hKJZY25hsABRMjvhEwy7xQ4s6Ty3cyiR8W9PvPpR8XIYQQQgghhBBCCCGEEEIIIYQQQui99xd9MndVczNj5wAAAABJRU5ErkJggg=='),

                ),
            
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('home'),
              onTap: (){
                MySnackBar('I am Home', context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('phone'),
              onTap: (){
                MySnackBar('I am Phone', context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              onTap: (){
                MySnackBar('I am Email', context);
              },
            ),


            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('home'),
              onTap: (){
                MySnackBar('Home', context);
              },
            ),
          ],

        )
      ),

      endDrawer: Drawer(

          child: ListView(

            children: [
              DrawerHeader(
                child: UserAccountsDrawerHeader(

                  decoration: const BoxDecoration(color: Colors.blue),
                  accountName: const Text('SM Shaqib', style: TextStyle(color: Colors.black),),
                  accountEmail: const Text('smshaqib@gmail.com'),
                  currentAccountPicture: Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAflBMVEX///9fyfhax/gxufYHW50EWZwDWJxPxfjz+/4IXJ5hhrSi3ftVxvjd5e4AVJrX8P3n9v5HvveG0/nN7P0AT5jf8/140PkATJcARpTS7v245fvE6Py2xtro9v4tqucMs/UARJNOrOAIO4uW2fotu/au3/oGOYnC4PNSfK7v8/fVukePAAADUklEQVR4nO3c21LbMBSFYSuxJVJSUVqDTaEmoS1t3/8F6wNxEluytzvTyd6b9Q+XXPibJaIhHJIEIYQQQgghhBBCCCGEEEIIIYQQQggp6eZ6Qd+vLv24y3twW2rOuZtLP+7yHpwJtQqmCBgWagIGhaqAIaFE4E0UGBAqA46F2oAjoTrgUKgPaOQD46+iAaFGoFEPNOqBRj3QqAca9UCjHmgAZBsRaNQDjXqgUQ806oEGQI4BCCDzvgAIIO8ABJB5AALIPADfE9C4u0s/7vKWAdUvqB6II8ovLAgg8wAEkHkAAsg8AAFkHoAAMg9AAJkHIIDMAxDAuqtFCQTeO3q395yBnyLA7egv8aK5zwAC+L+AK4nAO+3AJPlK/7V0mUA6USyQShQMpBFFAylE4cB5onjgHFEBcJqoAjhFVAKME9UAY8SV+xb+dHnAMDG64K2L/BMoxsAQMQ5cr7dUIh/gmBg9ojWQTOQEHBKnFiQTeQHPiXNAEpEb8JQ4fUSJRH7AI3F+wZYoD3gg0oAzRJ7Ajkg5ol1OHrAhUhecJPIFNkQ6MErkDEySyA9OgsAIkTcwUgQYJOoCBojagCOiPuCAKBK4mgaeEUUC72cmPCXKBG7nhQeiUKAhCDuiUOBqRRE2RLFAmnDtRAJN+w0STbiWCEweHV1Y+Y+Xftx/qSWShFWW5WKJFGGVpRu5RIKwsulmI5c4L+yAcok/qECxxJ/PM0CfHYRSideTxMrb7EBMU6uP2ADfiGmTOmKVe9sSsw6YpsoOag30B2KqkVgV3rdEq5RYlXneEX1r7ImFEmIDjBBlrji8F6uyyHui9z2vfUWVueI5sdoVnbA1nvnqr0mhxMfj+4Zm/1IUb0Rv03QArIkyD2pPrIFl0Zb7/iY88Ylf0exfy7KoP4a8I1A2sVmw5uXZZug7AUo+qO2CuR3zznySV9y/BnkjoFjir5c0xBv75BKfdjSg4HvxqSQNKHrFctYn/V48J0YHVEKc2E8FMbSaknvxqczmzqcCImXABmh1EUNAscQdYcAOKJY4v6LtU0q0VjyxP6gTB9R2b6hKJZY25hsABRMjvhEwy7xQ4s6Ty3cyiR8W9PvPpR8XIYQQQgghhBBCCCGEEEIIIYQQQui99xd9MndVczNj5wAAAABJRU5ErkJggg=='),

                ),

              ),

              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('home'),
                onTap: (){
                  MySnackBar('I am Home', context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('phone'),
                onTap: (){
                  MySnackBar('I am Phone', context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email'),
                onTap: (){
                  MySnackBar('I am Email', context);
                },
              ),


              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('home'),
                onTap: (){
                  MySnackBar('Home', context);
                },
              ),
            ],

          )
      ),
       
    );
  }

}