
import"package:flutter/material.dart";
void main(){
  runApp(const PlayerApp());
}
class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});
  
  @override
  State<PlayerApp>createState()=>_PlayerAppState();
}
class _PlayerAppState extends State<PlayerApp>{
  int _counter=0;
List<String>PlayerList=<String>[
"https://tse4.mm.bing.net/th?id=OIP.k-XpRF0EIqlEln1_STXlOAHaE8&pid=Api&P=0&h=180",
"https://tse3.mm.bing.net/th?id=OIP.E3UNwm389l_qdOdJ6zbhCAHaE8&pid=Api&P=0&h=180",
"http://images.unsplash.com/photo-1468327768560-75b778cbb551?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9",
"https://tse4.mm.bing.net/th?id=OIP.4g9-yIBm-G56rSlQAEFp6AHaE9&pid=Api&P=0&h=180",
];
@override
Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"player",
    home:Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.blue,
        title:const Text("Player app"),
        centerTitle:true,
      ),
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,children:<Widget>[
            Image.network(PlayerList[_counter],
            height:300,
            width: 300,),
          ],
        ),
    ),
   floatingActionButton: FloatingActionButton(onPressed: (){
    if(_counter<PlayerList.length-1){
      _counter++;
    }else{
      _counter=0;
    }
    setState((){});
   },
   tooltip:"Increment",
   child:const Icon(Icons.add),
   ),
  ),
  );
}

}