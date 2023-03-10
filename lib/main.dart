import 'package:flutter/material.dart';
import 'package:flutter_name_route/screen/page1.dart';
import 'package:flutter_name_route/screen/page2.dart';
import 'package:flutter_name_route/screen/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        '/' : (context)=> Page1(),
        Page2.routeName : (context)=> Page2(),
        Page3.routeName : (context)=> Page3(),

      },

      // home: const Page1() ,
    );
  }
}
