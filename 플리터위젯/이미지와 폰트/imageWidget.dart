import 'package:flutter/material.dart';

class ImageWidgetApp extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return _ImageWidgetApp();
  }
}

class _ImageWidgetApp extends State<ImageWidgetApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Image Widget')),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Image.asset('image/flutter-logo.png', width: 300,height: 100, fit: BoxFit.contain),
              Text('Hello Flutter', style: TextStyle(fontFamily: 'NanumGothic', fontSize: 30, color: Colors.blue))
            ]
          )
        ),
      )
    );
  }
}
