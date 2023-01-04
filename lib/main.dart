import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
              'Ask Me Anything',
          style: TextStyle(
            fontFamily: 'Rubik',
            fontSize: 20.0,
          ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Text(
                    'Ask Me Anything by pressing the magic ball and see what it says......',
                    style: TextStyle(
                      fontFamily: 'DynaPuff',
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                        setState( (){
                            i=Random().nextInt(4)+1;
                          }
                          );
                      },
                      child:Image.asset('images/ball$i.png'),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}