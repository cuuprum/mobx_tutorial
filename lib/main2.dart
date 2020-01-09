import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_tutorial/mobx/counter.dart';

final CounterMobx counter = CounterMobx();

void main() => runApp(MobxTutorial());

class MobxTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobx Demo")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Observer(builder: (context) =>  Text(counter.value.toString(), style: TextStyle(fontSize: 80.0),)),
          SizedBox(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                onPressed: (){
                  counter.increment();
                },
                child: Icon(Icons.arrow_upward),
              ),
              SizedBox(width: 20.0),
              FloatingActionButton(
                onPressed: (){
                  counter.decrement();
                },
                child: Icon(Icons.arrow_downward),
              ),
            ],
          ),
        ],
      ), 
    );
  }
}