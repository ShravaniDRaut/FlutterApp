import"package:flutter/material.dart";
void main(){
  runApp(const AppColorApp());
}
class AppColorApp extends StatefulWidget{
  const AppColorApp({super.key});

  @override
  State<AppColorApp>createState()=>_AppColorAppState();
}
class _AppColorAppState extends State<AppColorApp>{
  bool colorChange=true;

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
    debugShowCheckedModeBanner:false,
    title:"Appbar Color",
    home:Scaffold(
      appBar:AppBar(
        title: const Text("AppBar Color App"),
        centerTitle:true,
        backgroundColor: (colorChange)?Colors.amber:Colors.blue,
        ),
        body:const Center(child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Change AppBar color"),
          ],
        ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          if(colorChange){
            colorChange=false;
          }else{
            colorChange=true;
          }
          setState(() {});
        },
        child: const Icon(Icons.add),
        ),
        ),
    );
  }
}