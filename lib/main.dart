import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: "My App",

      home: Home(),

      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.blue,

        accentColor: Colors.green,

        buttonColor: Colors.orangeAccent,

        textTheme: TextTheme(

          headline1: const TextStyle(color : Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
  
          headline2: const TextStyle(color : Colors.orange,fontSize: 25,fontWeight: FontWeight.bold),

          bodyText1: const TextStyle(color: Colors.black,fontSize: 16,letterSpacing: 2),

          subtitle1 : const TextStyle(color: Colors.grey),

          subtitle2 : const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),

          caption: const TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 24)

      
        )
      ),

      


      
    );
  }
}
