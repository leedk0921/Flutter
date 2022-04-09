import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Materal Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget{
  @override
  State<MaterialFlutterApp>createState(){
    return _MaterialFlutterApp();
  }
}

class _MaterialFlutterApp extends State<MaterialFlutterApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Material Design App'),),
      floatingActionButton: FloatingActionButton(child:Icon(Icons.add),
          onPressed:(){

      }),
      body:Container(
        child:Center(
        child:Column(
          children:<Widget>[
            Icon(Icons.android),Text('android')],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        )
      )
    );
  }
}
