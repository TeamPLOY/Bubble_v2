import 'package:get/get.dart';

class Termcontroller extends GetxController{
  RxList<bool> isClick =[false,false].obs;
  RxList<bool> isDroped = [false,false].obs;

  void changeDrop(bool selector){
    if(selector==true){
      isDroped[1]=!isDroped[1];
    }
    else if(selector==false){
      isDroped[0]=!isDroped[0];
    }
  }

  void changClick(int selector){
    if(selector==0){
      isClick[0]=!isClick[0];
    }
    else if(selector==1){
      isClick[1]=!isClick[1];
    }
  }

  void allClick(){
    if(isClick[0]==true&&isClick[1]==true){
      isClick[0]=false;
      isClick[1]=false;
    }
    else{
      isClick[0]=true;
      isClick[1]=true;
    }
  }
  
}