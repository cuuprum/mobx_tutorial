import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_tutorial/mobx/tasbih.dart';

final Tasbih tasbih = Tasbih();

void main() => runApp(TasbihMudah());

class TasbihMudah extends StatelessWidget {
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
      appBar: AppBar(
        title: Text("Tasbih Mudah"),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.redo, color: Colors.white,),
            onPressed: () {
              tasbih.reset();
              log("Reset pressed");
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,        
          children: <Widget>[
            Observer(builder: (context) => Text(tasbih.value.toString(), style: TextStyle(fontSize: 180.0))),
            SizedBox(
              height: 20.0,
            ),
            FloatingActionButton(              
              onPressed: () {
                tasbih.increment();
              },
              child: Icon(Icons.all_inclusive, size: 40.0,),
            ),
          ],
        ),
      ),
    );
  }
}
