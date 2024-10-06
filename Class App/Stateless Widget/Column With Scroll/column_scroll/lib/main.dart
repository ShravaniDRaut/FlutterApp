import"package:flutter/material.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(appBar: AppBar(title: const Text("Column Scroll",
    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,),
    ),
    centerTitle: true,
    backgroundColor: Colors.lightBlue,),
    body: SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.network(
          "https://th.bing.com/th/id/OIP.Y8mP_a2ih68IGKCPIUGAdgHaE8?pid=ImgDet&w=167&h=111&c=7&dpr=1.3"),
          Container(
          height: 200,
          width: 200,
          color: Colors.amber,
          ),
          Image.network(
          "https://th.bing.com/th/id/OIP.Y8mP_a2ih68IGKCPIUGAdgHaE8?pid=ImgDet&w=167&h=111&c=7&dpr=1.3"),
          Container(
          height: 200,
          width: 200,
          color: Colors.amber,
         ),
         Image.network(
          "https://th.bing.com/th/id/OIP.Y8mP_a2ih68IGKCPIUGAdgHaE8?pid=ImgDet&w=167&h=111&c=7&dpr=1.3"),
          Container(
          height: 200,
          width: 200,
          color: Colors.amber,
         ),
      ],
      ),
      ),
    ),
    );
  }
}