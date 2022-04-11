import 'package:flutter/material.dart';
//material.dart 플리터의 UI와 관련된 거의 모든 클래스가 포함되어 자주 이용

void main(){
  runApp(MyApp()); //runApp() 함수는 플리터 앱을 시작하는 역할
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    print('createState');
    return _MyApp();
  }
}


class _MyApp extends State<MyApp>{
  var switchValue =false;
  String test='hello';
  Color _color=Colors.blue;

  @override
  Widget build(BuildContext context){
    print('20181216 이동건');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.light(),
      home:Scaffold(
        body:Center(
          child: ElevatedButton(
            child:Text('$test'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_color)),
            onPressed: () {
              if(test=='hello'){
                setState(() {
                  test='flutter';
                });
              }else {
                setState(() {
                  test='버튼';
                  _color=Colors.blue;
                });
              }
            })),
          ));
  }
  @override
  void initState(){
    super.initState();
    print('initState');
  }
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}

