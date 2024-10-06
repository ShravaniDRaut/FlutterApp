  
  import 'package:flutter/material.dart';
void main(){
    runApp(const MainApp());
  }
  class MainApp extends StatelessWidget{
    const MainApp({super.key});

    @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
      title: const Text(
        "NETFLIX DEMO",
      style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      color: Colors.red
      ),
      ),
      centerTitle: true,
      backgroundColor: Colors.black38,
      ),
      
      body: ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context,int index){
          return  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Text("Action Movies",
           style:  TextStyle(
           fontStyle: FontStyle.normal,
           fontSize: 30,
           fontWeight: FontWeight.w500,
            ),
           ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 200,
                child: Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.9szsf3_iyOLMMzJd8YXt_gHaK9&pid=Api&P=0&h=180",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 200,
                child: Image.network(
                  "https://tse2.mm.bing.net/th?id=OIP.MPT35vJeXq4vWHvGzPvTXgHaKe&pid=Api&P=0&h=180",
                  fit:BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height:300,
                width: 200,
                child: Image.network(
                  "https://tse3.mm.bing.net/th?id=OIP.Mv_WCcx8GaOJ4DHFDIHYfAHaKm&pid=Api&P=0&h=180",
                  fit:BoxFit.cover,
                ),
                ),
                Container(
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 200,
                child: Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.AOBehQVhpaQe7UKR0AYHrAHaK-&pid=Api&P=0&h=180",
                  fit:BoxFit.cover,
                ),
                ),
                Container(
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 200,
                child: Image.network(
                  "https://tse2.mm.bing.net/th?id=OIP.oTQp1l77Ha8sOPK03unMsAHaK-&pid=Api&P=0&h=180",
                  fit:BoxFit.cover,
                ),
                ),
                Container(
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 200,
                child: Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.fcqKETT1lfXoz93YkeWATAHaKX&pid=Api&P=0&h=180",
                  fit:BoxFit.cover
                ),
                ),
               ],
             ),
            ),
           ],
          );
         }
        ),
       ),
     );
    }
   }
  
  
  