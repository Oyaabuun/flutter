import "package:flutter/material.dart";


// runApp(const MaterialApp(home: Text('Hello World')));
//the const word here makes the code more memory efficient
//home named parameter inisde the material widget is an important parameter
/*MaterialApp is the name of the widget and () is to create the widget
material app is the widget name , 
widget means kind of box designs which 
we will create with code , 
think of like adding widgets on the app screen */
// two types of parameters named and postional
//positional parameters are passed based on postion  and named are passed based
//on the input and caller names associated
//with the parameter
// **********************************************************
/*Deep Dive: Position & Named Arguments
In the previous lecture, you learned about "positional" and "named" arguments / parameters.

In general, function parameters / arguments (the term is used interchangeably here) are a key concept.

You use arguments to pass values into a function. The function may then use these parameter values to work with them - e.g., to display them on the screen, use them in a calculation or send them to another function.

In Dart (and therefore Flutter, since it uses Dart), you have two kinds of parameters you can accept in functions:

Positional: The position of an argument determines which parameter receives the value

void add(a, b) { // a & b are positional parameters
  print(a + b); // print() is a built-in function that will be explained later
}
 
add(5, 10); // 5 is used as a value for a, because it's the first argument; 10 is used as a value for b
Named: The name of an argument determines which parameter receives the value

void add({a, b}) { // a & b are named parameters (because of the curly braces)
  print(a + b); 
}  
 
add(b: 5, a: 10); // 5 is used as a value for b, because it's assigned to that name; 10 is used as a value for a
Besides the different usage, there's one very important difference between positional and named arguments: By default, positional parameters are required and must not be omitted - on the other hand, named arguments are optional and can be omitted.

In the example above, when using named parameters, you could call add() like this:

add();
or

add(b: 5);
When using positional parameters, calling add() like this would be invalid and hence cause an error!

You can change these behaviors, though. You can make positional arguments optional and named arguments required.

Positional arguments can be made optional by wrapping them with square brackets ([]):

void add(a, [b]) { // b is optional
  print(a + b);
}
Once a parameter is optional, you can also assign a default value to it - this value would be used if no value is provided for the argument:

void add(a, [b = 5]) { // b is optional, 5 will be used as a default value
  print(a + b);
}
add(10); // b would still be 5 because it's not overwritten
add(10, 6); // here, b would be 6
Default values can also be assigned to named parameters - which are optional by default:

void add({a, b = 5}) { // b has a default value of 5
  print(a + b); 
}  
 
add(b: 10); // for b, 10 would be used instead of 5; a has no default value and would be "null" here => a special value type you'll learn about throughout this course
You can also make named parameters required by using the built-in required keyword:

void add({required a, required b}) { // a & b are no longer optional
  print(a + b); 
}  
You will, of course, see these different use-cases in action throughout the course.

*/
//runApp(const MaterialApp(home: Scaffold(body: Center(child: Text('Hello World'),),),),);
//restructing the above line to below for better indentation using command pallet ctr;+shift+p and use format after inseting the ),),) after the )
//********************************************************************************************************************************* */  
  
/*  this was part of lecture just commented
 void main() {
  runApp(
   //const MaterialApp was written here but now we removed as the dart interpreter suggested  
     MaterialApp(
      home: Scaffold(
      //backgroundColor: Colors.lime,
      //backgroundColor: Color.fromARGB(255, 200, 219, 23),
               
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 6, 82, 3),
                Color.fromARGB(255, 103, 160, 37),
              ],
              begin: Alignment.topLeft, //the alignmentt sets how the gradient backgourd her will change 
              end: Alignment.bottomRight,
            ),
        
        ),
        child: const Center(
          child: Text('Hello World',style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
          ),),
        ),
      ),
    ),
  ),
);
//the Scaffold widget
}

it was part of lecture uptil this line*/
//*********************************************************** */
void main() {
  runApp(
   //const MaterialApp was written here but now we removed as the dart interpreter suggested  
     const MaterialApp(
      home: Scaffold(    
        body: GradientContainer(), // this here is the constructor function of this class
        /*So even if you don't add

your own constructor function explicitly,

which you can do but which we're not doing here,

you get one automatically by Dart.*/ 
    ),
  ),
);

}


///widgets are objects and objects are the data structures in the memory
//StatelessWidget is already present inside the flutter package that we have imported in the beginning of the code 
//we are inheritng the properties of the statelesswidget in our own custom class
//in flutter we can create widget class or class that can do normal studff also
class GradientContainer extends StatelessWidget{
  /*GradientContainer({mykey}): super(key: mykey)
  //super() is calling the 
  //constructor of the parent class StatelessWiget 
  //and we are passing our own named parameter to 
  //the default constructor super() and changing the 
  //default "key" argument of super() with "mykey" of my own constructor 
  // that is GradientContainer() 
  {
    //initialisation work 
    //comments 
    //this is a constructor we are adding 
    //so this class can be accesible moreover 
    //even if you donot create a constructor 
    //dart will do it for you anyways
  }
*/
  //the above comments in the braces will display as part of comments for this coonstructor 
  //if you want to write the code without it , 
  //it should be like as shown below 
  //GradientContainer({mykey}): super(key: mykey);
  // another shortcut method of writing the above line is :-
  //but keep in mind super.key is corrent not super.mykey or anyother 
  // this is default dart way of telling the statelesswidget's super() thath
  // child class is requesting for super's key in 2 words short code
  // i was getting blue line suggestion to add the const GradientContainer
  // so for better optimisation and some practical usage 
  //scenarios we learned how to declare our onstructoer 
  //and pass the necesarry 
  //key values which is required by our statelesswidget  
  const GradientContainer({super.key});

  @override
  //widget is the return type of the build function so
  // whenever GradientContainer's build fucntion is called 
  // it will return a widget datatype
  //we are @overriding the stateless wifget's default
  // build fucntion with our own custom build fucntion
  //if you hover your mouse over the stateless 
  //widget you will see all the fucntions inside this class
  Widget build(context) {
    //the container widget we are returning 
    //here since the return type of our build fucntion is 
    //widget ,as we have mentioned the widget keyword before 
    //the build 
    // this container function that we are returning is 
    //the copied fucntion from the top if you observe 
      return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 6, 82, 3),
                Color.fromARGB(255, 103, 160, 37),
              ],
              begin: Alignment.topLeft, //the alignmentt sets how the gradient backgourd her will change 
              end: Alignment.bottomRight,
            ),
        
        ),
        child: const Center(
          child: Text('Hello World',style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
          ),),
        ),
      ) ; 
  }
   
}