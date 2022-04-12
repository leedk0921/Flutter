import 'package:flutter/material.dart';//플러터 패키지를 불러올때 사용하기 위해 import 작성
//material.dart 플리터의 UI와 관련된 거의 모든 클래스가 포함되어 자주 이용

void main(){//런앱 함수를 호출 하기 위하여 작성
  runApp(MyApp()); //runApp() 함수는 플리터 앱을 시작하는 역할
  //플러터 앱을 시작하면서 화면에 표시할 위젯을 전달하는 역할
}

class MyApp extends StatefulWidget{//상태가 연결된 동적인 위젯을 처리하기 위하여 선언 //StatefulWidget 상태변경을 감시를 담당하도록함.
  @override //재정의
  State<StatefulWidget> createState(){//StatefulWidget 를 상속받는 MyApp은 createState()함수를 재정의하여 호출
    //StatefulWidget보다 State 클래스가 상대적으로 더 무겁기 때문에 서로 분리, state클래스가 실제 갱신 등을 담당하도록함.
    print('createState'); //스테이트가 생성되었다고 출력
    return _MyApp(); //MyApp 클래스가 현재 화면을 주시하다가 상태 변경이 되면 이를 감지하고 _MyApp 클래스가 화면을 갱신
  }
}


class _MyApp extends State<MyApp>{//스테이트풀 위젯은 state클래스가 필요하기 때문에 클래스 만들고, 안에 위젯 담음
  String test='안녕하세요';//초기 시작화면 '안녕하세요' 버튼으로 설정하기 위함
  Color _color=Colors.red; //버튼의 초기 색상을 빨강으로 지정
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo', //'Flutter Demo' 데모라고 앱의 이름을 정의
      theme: ThemeData( //앱의 색이나 설정을 정의. themedata를 이용하여 설정을 구체화
        primarySwatch: Colors.blue, //앱의 메인색상을 지정하는 primarySwatch를 사용하여 앱의 메인색상을 파랑으로 정의
        visualDensity: VisualDensity.adaptivePlatformDensity, //visualDensity 속성은 앱이 다양한 플랫폼에 적응적으로 보여지도록 하기 위하여 정의
      ),
      home:Scaffold(//스위치를 구성하기 위해 작성
        body:Center(
          child: ElevatedButton(//버튼 클릭시 이벤트 동작을 처리하기 위해 child함수 이용하여 위젯사용
            child:Text('$test'),//child를 선언해 Text에 문자열 변수 test에 있는 '안녕하세요'를 불러옴, 그래서 초기 시작화면 안녕하세요 버튼 생기게함
            style: ButtonStyle(//버튼 스타일을 적용하기위해 사용
              backgroundColor: MaterialStateProperty.all(_color)),
            onPressed: () { //누르는걸 감지
              if(test=='안녕하세요'){ //초기 안녕하세요 버튼을 누르면 반갑습니다 라는 버튼으로 바뀌게 만들기 위해서 if 값 선언
                setState(() {//변수값이 바뀌면 이 사실을 앱에 알려 화면을 갱신하기 위하여 setState작성
                  test='반갑습니다.'; //test를 반갑습니다로 변경하여 출력하기 위함
                  _color=Colors.blue; //버튼의 색상을 파랑으로 변경!
                });
              }else {
                setState(() {
                  if(test=='버튼을 누르세요!'){ //'반갑습니다' 버튼을 눌렀을 때 텍스트가 출력되는것을 방지하기 위하여 선언
                    print('20181216 이동건'); //마지막 '버튼을 누르세요' 버튼을 누르면 학번과 이름 출력되게 선언
                  }
                  test='버튼을 누르세요!'; //'안녕하세요'!='반갑습니다' 이기에 else구문을 출력하게 하여 test값을 다시 대입하여 출력
                  _color=Colors.green; //버튼의 색상을 초록으로 변경!
                });
              }
            })),
          ));
  }

}

