import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}):super(key: key);
  String reversedtext = "";
  
  TextEditingController inputController =  TextEditingController();
  final _text = "";
  
  static const double _hpad = 16.0;

   @override
Widget build(BuildContext context) {
  final urlImage = "https://images.unsplash.com/photo-1599420186946-7b6fb4e297f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";
  return  Scaffold(
    appBar: AppBar(
      title: const Text("My first app"),

    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: inputController,
          decoration: InputDecoration(
            hintText: "Enter your name",
          
          ),
        ),
        TextField(
      
          controller: inputController,
          decoration: InputDecoration(hintText: "Enter a String"),
          onChanged: (String text) {
            
reversedtext = text;
            
          },
          onSubmitted: (String text) {
reversedtext = text;
          }
          
        ),
         Text("$reversedtext"),
         
        ElevatedButton(onPressed: () {},
        child: Text("Click me" ,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        )), 
        ),
        Text("$_text", 
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        ),
        
        Container(
          
          
          child: const Text("My first Screen"),
      
        ),
        
        Container(
           padding: const EdgeInsets.fromLTRB(_hpad, 10.0, _hpad, _hpad),
          child: Text("cjivivnkvkVK"),
          
        ),
        Container(
           padding: const EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
          child: Text("cbuqkqbb")
          
        ),
        Container(
          width: 200,
      height: 200,
      decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pexels-photo-1034662.jpeg"),
              fit: BoxFit.cover,
            ),
        
          ),
      
        ),
      
      ],
    ),
  
    
  );
 
}
}