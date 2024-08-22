import "package:first_app/styled_text.dart";
import "package:flutter/material.dart";

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
   const GradientContainer({super.key});
  @override
  Widget build(context) {
      startAlignment=Alignment.topLeft;
      //WE ARE ABLE TO REASSIGN THIS VARIABLE HERE AS IN DART
      //when variable is declared with var variablename then it is dynamic type it can take anyvalue and it is mutable 
      return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color.fromARGB(255, 6, 82, 3),
                Color.fromARGB(255, 103, 160, 37),
              ],
              begin: startAlignment, 
              end: endAlignment,
            ),
        
        ),
        child: const Center(
         child : StyledText(),
        ),
        );
    }
}