import 'package:flutter/material.dart';

void main() {
  runApp(MyStatefullApp());
}

/*
//1ro hacemos el stateless w.
class MyStatelessApp extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo de widget Sin Estado"),
        ),
        body: Center(
          child: Text(counter.toString(),
          style: TextStyle(fontSize: 50),),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one_sharp),
          onPressed: (){
            counter++;
            print(counter);
          },
        ),
      ),
    );
  }
}
 */

//Ahora hacemos el statefull w.
class MyStatefullApp extends StatefulWidget {
  const MyStatefullApp({Key? key}) : super(key: key);

  @override
  State<MyStatefullApp> createState() => _MyStatefullAppState();
}

class _MyStatefullAppState extends State<MyStatefullApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo de widget CON Estado"),
        ),
        body: Center(
          child: Text(counter.toString(),
            style: TextStyle(fontSize: 50),),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one_sharp),
          onPressed: (){
            counter++;
            print(counter);
            setState(() {
            });
          },
        ),
      ),
    );
  }
}