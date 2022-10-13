import 'package:flutter/material.dart' ;
import 'package:xo_advanced/xoFirstScreen.dart';

void main ( ) {
  runApp(Appscreen()) ;
}
class Appscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false  ,
        home:login()
    );
  }

}