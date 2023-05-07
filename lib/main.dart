import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int x =0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lottery App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const Center(child: Text("your winning number is 3")),
            const SizedBox(height: 20),
            Container(

              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x==3?
                    Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  const [
                    Icon(Icons.check_circle,color: Colors.red, size: 34,),
                    SizedBox(height: 15),
                    Text("Congratulations you have won the lottery "),
                  ],
                )
                    : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                   const  Icon(Icons.error,color: Colors.red, size: 34,),
                     const SizedBox(height: 15),
                    Text("Better luck next time  your number is $x try again"),
                  ],
                ),
              ),
            )

            
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              x= random.nextInt(6);
              setState(() {

              });
            });
    },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
