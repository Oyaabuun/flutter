import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText({super.key});
 @override
  Widget build(context) {
     
     return const Text( //We are commenting the hello world in the below liine because we want  to make the style text generiic to be used in other places as well
           // 'Hello World',
            style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
          ),

     );
    
  }

}