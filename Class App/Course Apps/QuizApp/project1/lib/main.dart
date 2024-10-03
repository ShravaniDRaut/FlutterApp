import"package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:QuizApp(),
    );
  }
}
class  QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState()=> _QuizAppState();
}
class _QuizAppState extends State<QuizApp>{
  List<Map> allQuestions = [
    {
      "question":"who is the founder of Microsoft ?",
      "options":["steve jobs","bill gates","Lary page","elon mask"],
      "correctAnswer":1
    },
    {
      "question":"who is the founder of Google ?",
      "options":["steve jobs","bill gates","Lary page","elon mask"],
      "correctAnswer":2
    },
    {
      "question":"who is the founder of Spacex ?",
      "options":["steve jobs","bill gates","Lary page","elon mask"],
      "correctAnswer":3
    },
    {
      "question":"who is the founder of Apple ?",
      "options":["steve jobs","bill gates","Lary page","elon mask"],
      "correctAnswer":0
    },
    {
      "question":"who is the founder of Meta ?",
      "options":["steve jobs","Mark zuberberg","Lary page","elon mask"],
      "correctAnswer":1
    },
  ];

int currentQuestionIndex=0;
int selectedAnswerIndex=-1;
int finalScore=0;

 WidgetStateProperty<Color?> checkAnswer(int answerIndex){
 if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]['correctAnswer']) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

bool questionpage=true;
  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
   } 
   Scaffold isQuestionScreen(){
    if(questionpage == true){
   return Scaffold(
      appBar: AppBar(
        title:const Text(
          "Quiz App" ,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 235, 127, 198),
        ),
   
        body: Column(
          children: [
             const SizedBox(
              height: 30, 
              ),

              //question Number
              Row(  
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    "question : ${currentQuestionIndex 
                    +1}/${allQuestions.length}",
                     style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700
                     ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
    
       //question 
       SizedBox(
        height: 50,
        width: 400,
        child:Text (
          allQuestions[currentQuestionIndex]["question"],
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.purple,
          ),
        ),
       ),
       const SizedBox(
        height: 50,
       ),

       //option 1
       SizedBox(
        height: 50,
        width: 350,
        child:ElevatedButton( 
          style:ButtonStyle(
            backgroundColor: checkAnswer(0),
           ),

        onPressed: () {
          if(selectedAnswerIndex==-1){
            selectedAnswerIndex=0;
            if(selectedAnswerIndex == 
            allQuestions[currentQuestionIndex]['correctAnswer']){
              finalScore++;
            }
            setState(() {});
          }
        },
        child: Text(
          "A. ${allQuestions[currentQuestionIndex]["options"][0]}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
           ),
          ),
         ),
       ),
       const SizedBox(
        height: 25,
       ),

       //option 2
       SizedBox(
        height: 50,
        width: 350,
        child:ElevatedButton( 
          style:ButtonStyle(
            backgroundColor: checkAnswer(1),
           ),

        onPressed:(){
          if(selectedAnswerIndex==-1){
            selectedAnswerIndex=1;
            if(selectedAnswerIndex == 
            allQuestions[currentQuestionIndex]['correctAnswer']){
              finalScore++;
            }

            setState(() {});
          }
        },
        child: Text(
          "B. ${allQuestions[currentQuestionIndex]["options"][1]}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          ),
       ),
       ),
       const SizedBox(
        height: 25,
       ),

       //option 3
       SizedBox(
        height: 50,
        width: 350,
        child:ElevatedButton( 
          style:ButtonStyle(
            backgroundColor: checkAnswer(2),
           ),

        onPressed:(){
          if(selectedAnswerIndex==-1){
            selectedAnswerIndex=2;
            if(selectedAnswerIndex == 
            allQuestions[currentQuestionIndex]['correctAnswer']){
              finalScore++;
            }

            setState(() {});
          }
        },
        child: Text(
          "C. ${allQuestions[currentQuestionIndex]["options"][2]}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          ),
       ),
       ),
       const SizedBox(
        height: 25,
       ),

       //option 4
       SizedBox(
        height: 50,
        width: 350,
        child:ElevatedButton( 
          style:ButtonStyle(
            backgroundColor: checkAnswer(3),
           ),

        onPressed: () {
          if(selectedAnswerIndex==-1){
            selectedAnswerIndex=3;
            if(selectedAnswerIndex == 
            allQuestions[currentQuestionIndex]['correctAnswer']){
              finalScore++;
            }
            setState(() {});
          }
        },
        child: Text(
          "D. ${allQuestions[currentQuestionIndex]["options"][3]}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
           ),
          ),
         ),
        ),
       const SizedBox(
        height: 25,
       ),
      ],
     ),
   
     floatingActionButton: FloatingActionButton(
      onPressed: () {
      if(selectedAnswerIndex !=-1){
        if(currentQuestionIndex < allQuestions.length-1) {
          currentQuestionIndex++;
        } else {
          questionpage=false;
        }
      selectedAnswerIndex= -1;
      setState(() { });
        }
      },
        backgroundColor:Colors.pink.shade50,
        child:  const Icon(
          Icons.forward,
          color: Colors.black,
        ),
      ),
     );
    }else{
      return Scaffold(
        appBar: AppBar(
          title: const Text(  
          "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(

             "https://tse4.mm.bing.net/th?id=OIP.svtqSwzUxtz_sOjhAWLD8QHaKX&pid=Api&P=0&h=180 ",
      
              height: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(height :30),
              const Text(
                "Congratulations",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ),
              ),
              const SizedBox(height: 30),
              Text(
                "Score : $finalScore /${allQuestions.length} ",
                style : const TextStyle(
                  fontSize:25,
                  fontWeight:FontWeight.w700,
                  color:Colors.black,
                ),
              ),
              const SizedBox(height: 30),
             ElevatedButton(
                onPressed: (){
                setState(() {
                  currentQuestionIndex =0;
                  finalScore =0;
                  selectedAnswerIndex =-1;
                  questionpage = true;
                });
               }, child: const Text(" reset Quiz ",
               style :TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
               ),
               ),
               ),
            ],
           ),
         ),
       );
     }
   }
 }
 
