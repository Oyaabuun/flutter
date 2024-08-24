//import "package:first_app/styled_text.dart";
import "package:first_app/dice_roller.dart";
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

/*
class GradientContainer extends StatelessWidget {
  //const GradientContainer({super.key, required this.colors});
  //in the above line if you are putting inside the {} menas you are defining
  // a named argument and it will need required keyword
  //below we are using itt as postional argument to keep
  //things simple

  /*const GradientContainer(this.color1,this.color2,{super.key});  
    final Color color1;
   final Color color2;
   */

  const GradientContainer(Color color1, Color color2, {super.key})
      : fcolor1 = color1,
        fcolor2 = color2;
//here we are passing the two colors in separate varaibles
  final Color fcolor1;
  final Color fcolor2;

//void rollDice() {}  this function is for activating 
//the pressbutton but since we are already using 
//the () {} in below lines so this is commented 



  @override
  Widget build(context) {
    //startAlignment=Alignment.topLeft;// this line will become error if you are using const it will be only correct if you are using var
    //WE ARE ABLE TO REASSIGN THIS VARIABLE HERE AS IN DART
    //when variable is declared with var variablename then it is dynamic type it can take anyvalue and it is mutable
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [fcolor1, fcolor2],
          begin:
              startAlignment, //when you use Alignment? startAlignment; in variable declaraion in starting of code here on begin and end we will have errors since it doesnt want null values so better to use var method
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize
              .min, //the dice went to the top middle so bring it back to center we used this
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            const SizedBox(height: 20,),
            /*
                          TextButton(onPressed: rollDice,
                                     child: const Text('Roll Dice'),
                          )*/
            TextButton(
              onPressed: () {
                //''onPressed has an anonynous function
                //which will register the click and
                //anything you wirte inside this curly braces
                //will happen if you want when the
                //button is pressed
              },
              style: TextButton.styleFrom(
                //padding: const EdgeInsets.only( //tis padding line increases the distance between the roll dice and the actual dice image
                // top: 20,
                //), //YOU CAN USE EITHER PADDING OR SizedBox parameter which we have used few lines before  
                foregroundColor: Colors
                    .white, //this line is making the roll dice line look bigger
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
*/

/////////////////88888888888888888888888888888888
///

//you should use only statelesswidget when 
//It is absolutely the kind of widget you should use
//if you just have a widget that takes some input values
//and then outputs some widgets.
/*
But if you have a widget that has some data,

that can change internally

and where such data changes then should affect

the rendered UI, as it's the case here,

where the image we wanna display on the screen

in our own widget here depends

on this "activeDiceImage" variable.

If we have a scenario like this,

"statelesswidget" is the wrong choice.

We should instead create this as a "statefulWidget".

So what's the difference?

StatefulWidgets, as the name implies,

allow us to manage state inside of them.

And state simply is data that may change over time

and that should impact the rendered UI.

So if the data changes, the user interface should change.
*/

/*
We simply have different states

of our user interface, you could say.

So therefore here indeed the first step is

to convert this to a "statefulWidget"

to make sure that in here the data may change

though to be precise it would be a bit overkill

to change the entire gradient container

to a "statefulwidget", since the majority of this widget

actually does not depend on that changing data,

it's really just this part here, this image and the button.

Only these things work together to change the image.

The rest of the widget is pretty stable.

Therefore here it would actually be preferable

to break this widget up into two separate widgets.

One "statelessWidget", this one,

and one "statefulWidget"
*/
class GradientContainer extends StatelessWidget {
//class GradientContainer extends StatefulWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.green({super.key})
      : color1 = const Color.fromARGB(255, 4, 80, 7),
        color2 = const Color.fromARGB(255, 123, 175, 63);

  final Color color1;
  final Color color2;



  @override
  Widget build(BuildContext context) {
    // Initialize alignment variables
    var startAlignment = Alignment.topLeft;
    var endAlignment = Alignment.bottomRight;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
