import 'dart:math' as math;

void main() {
  int choice1=0;
  int choice2=0;
  for(int i=0; i<100000; i++){
    var door_number=math.Random();
    int  my_num=door_number.nextInt(3)+1;
    int prize_number=door_number.nextInt(3)+1;
    if(my_num==prize_number)
      choice1++;
    while(true){
      var door_number=math.Random();
      int my_num=door_number.nextInt(3)+1;
      int prize_num=door_number.nextInt(3)+1;
      if(my_num!=prize_num){
        int choice=my_num;
        while(my_num==choice){
          my_num=door_number.nextInt(3)+1;
        }
        if(my_num==prize_num){
          choice2++;
          break;
        }
        else
           break;
      }

    }
  }
  print("선택을 바꾸지 않았을때 당첨 될 확률 : ${(choice1/100000)*100}");
  print("선택을 바꾸었을 때 당첨 될 확률 :  ${(choice2/100000)*100}");
  
}
