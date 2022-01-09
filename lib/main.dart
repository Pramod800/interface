import 'package:blogpost/screen/interface.dart';
import 'package:blogpost/screen/statefull.dart';
import 'package:blogpost/screen/statelessdata.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      routes:{
        '/':(context)=>const InterfaceApp(),
        '/stateless':(context)=>const StlData(),
        '/statefull': (context) =>const StfData(),

      }
      
     
    );
  }
}

