import 'package:get/get.dart';

class DropdownController extends GetxController {
  RxList<String> datas = ['1','1','1','A'].obs;

  void changeDatas(int content, String data) {
    if (content == 1) {
      datas[0] = data;
    } else if (content == 2) {
      datas[1] = data;
    } else if (content == 3) {
      datas[2] = data;
    } else if (content == 4) {
      datas[3] = data;
    }
  }

  String getDatas() {
    String thirdValue = int.tryParse(datas[2]) != null && int.parse(datas[2]) < 10 
      ? '0${datas[2]}' 
      : datas[2];

    return '${datas[3]}${datas[1]}${datas[0]}$thirdValue';
  }
}
