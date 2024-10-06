import 'package:flutter/material.dart';
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

@override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(appBar: AppBar(
    title: const Text(
      "Listview Demo",
    style: TextStyle(fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.black,
      ),
     ),
    centerTitle: true,
    backgroundColor: Colors.blue,
    ),

    body: ListView(
      children: [
        Image.network("https://tse2.mm.bing.net/th?id=OIP.gopMOPjOEOVh8k-qemTf1gHaEK&pid=Api&P=0&h=180",
        ),
        const Row(
          children:[
            SizedBox(width: 10),
        Text(
          "Bhari",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          ),
         Icon(
          Icons.favorite,
        color: Colors.red,
        ),
        
          ],
        ),
          Image.network("https://tse2.mm.bing.net/th?id=OIP.gopMOPjOEOVh8k-qemTf1gHaEK&pid=Api&P=0&h=180",
          ),      
    GestureDetector(
      onTap:(){
        print("Button pressed");
      },
      child:Container(
      height:50,
      color:Colors.amber,
      child:const Text(
        "Press me",
        ),
       ),
      )
     ],
    ),
 ),
  );
 }
}