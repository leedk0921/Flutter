import 'package:flutter/material.dart';
//material.dart 플리터의 UI와 관련된 거의 모든 클래스가 포함되어 자주 이용

void main(){
  runApp(MyApp()); //runApp() 함수는 플리터 앱을 시작하는 역할
}

class MyApp extends StatelessWidget{
  //runApp 함수로 플리터앱을 실행할때 MyApp클래스 정의 부분
  @override//오버라이딩을 올바르게 했는지 컴파일러가 체크한다.
  Widget build(BuildContext context){//빌드 함수를 재정의
    return MaterialApp(//처음 runApp()을 이용하여 클래스를 실행할때 MaterialApp()함수를 반환
      //MaterialApp은 그림을 그리는 도화지 개념
      //그림 그리는 도구인 title, theme, home 등이 정의
      title: 'Flutter Demo', //title:앱의 이름을 정의
      theme: ThemeData(//앱의 색이나 설정을 정의
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,//visualDensity : 다양한 플랫폼에 적응적으로 보이도록 정의
      ),
      home: MyHomePage(title:'Flutter Demo Home Page'),//앱을 실행 할 때 첫 화면에 어떤 내용을 표시할지 정의
    );
  }
}
