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