import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
       title:"India flag",
       home:MyScreen(),
       );
  }
}
class MyScreen extends StatelessWidget{
  const MyScreen({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text("India Flag"),
        centerTitle:true,
        backgroundColor:Colors.blue,
      ),
      body:Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            width:300,
            height: 45,
            color:Colors.orange,
            ),
            Container(
            width:300,
            height: 45,
            color:Colors.white,
            child:Image.network( 
           "https://tse1.mm.bing.net/th?id=OIP.3nftDdnLbMop6GQS78hK7gHaHa&pid=Api&rs=1&c=1&qlt=95&w=121&h=121"
            ),
            ),
            Container(
            width:300,
            height: 45,
            color:Colors.green,
            ),
            
          ],
         ),
        
        ),
      );
  
  }
}