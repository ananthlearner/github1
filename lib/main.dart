import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController controller =TextEditingController();
  String fr="hello";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
            title: const Text("ToDo List App"),
            titleTextStyle:  const TextStyle(color: Colors.white,fontSize: 20),
            centerTitle: true,
            backgroundColor: Colors.blue,
        ),
        // ...existing code...
        body: Column(
            children: [
              Row(
              children:[
              Expanded(
                child:Container(
                  margin:  const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: controller,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter a task',
                    ),
                  ),
                ),
              ),
              MaterialButton(
                color:Colors.blue,
               
                onPressed: (){
                  setState(() {
                    fr=controller.text;
                  });
                   
                },
                child: Text("Click"),
              ),
                ],
              ),
              Row(
                children:[
                 Expanded(
                    child: Container(
                        child:Text(fr),
                        padding:EdgeInsets.all(10),
                    ),
                 ),
                        MaterialButton(
                          child:Icon(Icons.delete, color:Colors.red,),
                          onPressed: (){
                        } 
                        ),
                ],
                 ),
                    ],
                  ),
              ),
        );
// ...existing code...
   }

}