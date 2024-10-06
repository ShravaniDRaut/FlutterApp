
import"package:flutter/material.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
 Widget build (BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar:AppBar(
        title: const Text("Row Demo",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
         
        ),
        ),
        centerTitle:true,
        backgroundColor:Colors.blue,
        ),
     body: Container(
      padding: const EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,//horizontal(adava)
        crossAxisAlignment:CrossAxisAlignment.stretch,//vertical
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.amber,
          
          ),
        ],
        ) ,
      ),
        ),    
      );
     }
   }