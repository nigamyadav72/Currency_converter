import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart'; //here this material.dart is name after the material design system name
// import 'package:flutter/cupertino.dart'; //this is for ios
//we can aslo do relative importing like import ./pages/currencyconveter something like that like in other languages


void main() {
  runApp(const MyApp()); //here const means it is compile time constant
}

//MaterialApp
//CupertinoApp

//Types of widgets
//1.StatelessWidget
//2.StatefulWidget
//3.InheritedWidget it is for something else not for UI

//state is some data that determine the widget

//we have to follow some design system to make our app better everytime

//1.Material Design is a design system develop by google
//2.Cupertino Design is created by apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //   return const Text('Hello, world', textDirection: TextDirection.ltr);

    //since we follow material design we here use Material App and for ios use CupertinoApp
    //this MaterialApp is use to setup our navigation

    //scaffold is related to single page it give access to header body footer like html

    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}


//before returning any widgets we have to put const before them because it improve performance since it make it to compile only single time 
