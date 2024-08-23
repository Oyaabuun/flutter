import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
   const StyledText(String text,{super.key}): mytext=text;
  //mytext is the text varaible and 2nd text is the text argument which is passed to the stateless wiidget
  //String text and super.key are passed separately to stateless widget
  //String text is passed as positional parameter and super is passed as named parameter
  final String mytext; //class variable available to methods inside the class

/*
 const StyledText(this.text,{super.key});
 String text; 

if your are using this.text you can write the above line like this
it means the we are telling dart positional 
parameter text should be mapped to 
vairble String text of same name inside the class
*/

   

 @override
  Widget build(context) {
     
     return Text( //We are commenting the hello world in the below liine because we want  to make the style text generiic to be used in other places as well
           // 'Hello World',
            mytext,           
            style: const TextStyle(
            color: Colors.white,
            fontSize: 28.0,
          ),

     );
    
  }

}