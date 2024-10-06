import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build (BuildContext context){
    print("Device Width: ${MediaQuery.of(context).size.width}");
    print("device heigth:${MediaQuery.of(context).size.height}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Gradient",
             ),
             centerTitle: true,
             backgroundColor: Colors.purpleAccent,
            ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text below the AppBar
            const Padding(
              padding: EdgeInsets.all(16.0), // Padding to separate the text from the AppBar
              child: Text(
                "Text outside the container",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
        
        Center(
          child:Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red,
            Colors.pink,
          ],
         ),
        ),
        
        child: const Column(
          mainAxisAlignment:MainAxisAlignment.center, 
          children:  [
        Text(
         "Hello",
          style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          ),
         ),
        Text(
          "Container",
        style: TextStyle(
          fontSize: 30,
        fontWeight: FontWeight.w500,
        color: Colors.white,
          ),
         ),
        ],
       ),
          ),
        
     ),
        
       
          ],   
          ),
      ), 
    
  
    );
    }
   }