import 'package:flutter/material.dart';

//flutter calls the main funciton automatically
main()
{
  //to display anything on the screen we need to attach a widget to the screen
  //widgets contains sub-widgets 
  //the page itself is a widget
  //basically everythign is a widget
  
  //now we need to provide a special function
  runApp(MyApp()); //we construct an object based on this class
  
}

//dart is built up of classes
//widget would be an object of the class
//flutter needs to know that the object can be used as a widget
//hence we use inheritance
//our class will be inherited from classes given by flutter,
//that is why we do the import
class MyApp extends StatelessWidget
{

  build(context) //required to allow to draw something on the screen //flutter calls this method
  {
    return MaterialApp(home:Scaffold(appBar:AppBar(title: Text("My First App"),),),); //something will be drawn. that something will be return
    //widgets will always return an another widget //i.e MaterialApp()
    //the MaterialApp() widget can be configured to draw anything
    //that is why we pass arguments to the meterial app //scaffold creates a new page //hence we need to configure that too
    //app bar takes more arguments //title 
    //title further takes another widget called text which takes a string
  }


}
