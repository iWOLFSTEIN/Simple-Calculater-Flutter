import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'app_scenes/calculator.dart';

void main()=> runApp(myApp());

class myApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
   //  var orientation = MediaQuery.of(context).orientation;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      title: "Calculator",
      home: Scaffold(
   
      body:   Calculator()
   
      ),
    );
  }
}


