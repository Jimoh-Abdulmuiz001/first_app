

import 'package:device_preview/device_preview.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:first_app/screens/first_screen.dart';
import 'package:first_app/screens/second_screen.dart';
import 'package:first_app/screens/textscreens.dart';
import 'package:first_app/screens/form.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    
    
      
    builder: (context) =>  const MyApp(), // Wrap your app
  ),
);
      class MyApp extends StatelessWidget{
  
// ignore: use_key_in_widget_constructors
const MyApp();
@override
Widget build(BuildContext context) {
  
  return MaterialApp(
    useInheritedMediaQuery: true,
    locale: DevicePreview.locale(context),
    builder: DevicePreview.appBuilder,
    
    theme: ThemeData.light(),
   
    routes: {
      "/first_screen": (context) => FirstScreen(),
      "/second_screen": (context) => Secondscreen(),
      "/textscreens": (context) => LoginDetails(),
      "/form": (context) => const FormScreen(),
    },

  
  
  );
}

}



class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    
    return Center(
    
     
        child: Column(
          
          children: [
            
          const   Text("My first App"),
          ElevatedButton(onPressed: (){Navigator.pushNamed(context, "/first_screen");}, child: Text("Next")),
          ElevatedButton(onPressed: (){Navigator.pushNamed(context, "/second_screen");}, child: Text("Qr code")),
          ElevatedButton(onPressed: (){Navigator.pushNamed(context, "/textscreens");}, child: Text("login page")),
            ElevatedButton(onPressed: (){Navigator.pushNamed(context, "/form");}, child: Text("login page")),
        
          
          
          ]
        ),
      
      
    );
  }
}

