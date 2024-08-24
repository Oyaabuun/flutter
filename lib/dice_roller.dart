
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer =Random();//dont use this when you are using the 2nd solution 
//this we only need once because the buiild fucntion inside the _Diceroller class needs to execute multiple times
//this is the best was to use this in-combination with the 2nd solution of the private class _Diceroller 

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  //since this is statefulwidget unlike the statelesswidget so we donot create any build()
  State<DiceRoller> createState() { 
    return _DiceRollerState(); //we are executing the constructor function of _Dicerollerstate 
//createstate returns a state that is why it is of typw state which is a generic type like the list 
  }
}
//when using statefulwidget you will be using two classes 
//convention is to use _ anda state with classname
//the  "_" means this class is private and it can be only used inside this file and 
//can only be used by the diceroller class here only 

//1st Solution
/*
class _DiceRollerState extends State<DiceRoller>{
    // Class-level variable
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6)+1;  //if you add 6 it will be between 0 and 5 
    setState((){ // THIS WILL reexecute the build function 
    //this will help to rerun the build fi=ucntion and show the updated image
      activeDiceImage = 'assets/images/dice-$diceRoll.png';  

    });
    
  }

  @override 
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min, // Centers the dice vertically
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice, // Calls the rollDice function on button press
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        );
  }

}
*/

//2nd Solution
class _DiceRollerState extends State<DiceRoller>{
    // Class-level variable
  var currentDiceRoll=2;

  void rollDice() {
    setState((){ 
      currentDiceRoll = randomizer.nextInt(6)+1; 

    });
    
  }

  @override 
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min, // Centers the dice vertically
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice, // Calls the rollDice function on button press
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        );
  }

}
