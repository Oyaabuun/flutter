import "package:first_app/styled_text.dart";
import "package:flutter/material.dart";

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
//Alignment? startAlignment; 
//the above commented line can also be used for 
//varaible declaration but it will show error in begin and end at the later portion of the code 
//this method of variable declaration means we are telling dart
//that our variable is alignmet data type and the '?' means that it can accept null type of values 

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
              begin: startAlignment, //when you use Alignment? startAlignment; in variable declaraion in starting of code here on begin and end we will have errors since it doesnt want null values so better to use var method 
              end: endAlignment,
            ),
        
        ),
        child: const Center(
         child : StyledText(),
        ),
        );
    }
}