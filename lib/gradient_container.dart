import "package:first_app/styled_text.dart";
import "package:flutter/material.dart";

//var startAlignment = Alignment.topLeft;
//var endAlignment = Alignment.bottomRight;
//Alignment? startAlignment; 

//the above commented line can also be used for 
//varaible declaration but it will show error in begin and end at the later portion of the code 
//this method of variable declaration means we are telling dart
//that our variable is alignmet data type and the '?' means that it can accept null type of values 
//********************************** */

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

/*final endAlignment = Alignment.bottomRight;
final endAlignment = Alignment.bottomRight;

the difference between final and const is that const is compile time locked 
where as final is execution time locked */
/*
//1st solution
class GradientContainer extends StatelessWidget{
   //const GradientContainer({super.key, required this.colors});
   //in the above line if you are putting inside the {} menas you are defining 
   // a named argument and it will need required keyword 
   //below we are using itt as postional argument to keep
   //things simple
   const GradientContainer(this.colors,{super.key});
  
   final  List<Color> colors;
 //  here we are passing a list of colors
  @override
  Widget build(context) {
      //startAlignment=Alignment.topLeft;// this line will become error if you are using const it will be only correct if you are using var
      //WE ARE ABLE TO REASSIGN THIS VARIABLE HERE AS IN DART
      //when variable is declared with var variablename then it is dynamic type it can take anyvalue and it is mutable 
      return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment, //when you use Alignment? startAlignment; in variable declaraion in starting of code here on begin and end we will have errors since it doesnt want null values so better to use var method 
              end: endAlignment,
            ),
        
        ),
        child: const Center(
         child : StyledText('Hello World'),
        ),
        );
    }
}
*/

//**********************************/
//2nd solution
class GradientContainer extends StatelessWidget{
   //const GradientContainer({super.key, required this.colors});
   //in the above line if you are putting inside the {} menas you are defining 
   // a named argument and it will need required keyword 
   //below we are using itt as postional argument to keep
   //things simple


  /*const GradientContainer(this.color1,this.color2,{super.key});  
    final Color color1;
   final Color color2;
   */

   const GradientContainer(Color color1,Color color2,{super.key}): fcolor1=color1,fcolor2=color2;
//here we are passing the two colors in separate varaibles  
   final Color fcolor1;
   final Color fcolor2;

  @override
  Widget build(context) {
      //startAlignment=Alignment.topLeft;// this line will become error if you are using const it will be only correct if you are using var
      //WE ARE ABLE TO REASSIGN THIS VARIABLE HERE AS IN DART
      //when variable is declared with var variablename then it is dynamic type it can take anyvalue and it is mutable 
      return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: [fcolor1,fcolor2],
              begin: startAlignment, //when you use Alignment? startAlignment; in variable declaraion in starting of code here on begin and end we will have errors since it doesnt want null values so better to use var method 
              end: endAlignment,
            ),
        
        ),
        child: const Center(
         child : StyledText('Hello World'),
        ),
        );
    }
}