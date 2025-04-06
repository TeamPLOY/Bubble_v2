import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class Alrambox extends StatefulWidget {
  final bool isMachine;
  final String date;
  const Alrambox({required this.date,required this.isMachine,super.key});

  @override
  State<Alrambox> createState() => _AlramboxState();
}

class _AlramboxState extends State<Alrambox> {
  late String text;

  @override
  void initState() {
    //ture이면 세탁기 false이면 건조기
    if(widget.isMachine==true){
      text='세탁기';
    }
    else{
      text="건조기";
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColor.gray100,width: 1))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.gray200,
               borderRadius: BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Text(text,style: AppTextStyles.M14.copyWith(color: AppColor.gray600),),
            ),
          ),
          const SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('$text가 완료되었습니다.',style: AppTextStyles.B18.copyWith(color: AppColor.gray700),),
                const SizedBox(height: 8,),
                widget.isMachine?Text('세탁기에서 빨래를 빼고 건조기를 돌리세요!',style: AppTextStyles.R16.copyWith(color: AppColor.gray600),)
                :Text('빠르게 건조기에서 빨래를 빼주세요!',style: AppTextStyles.R16.copyWith(color: AppColor.gray600),),
                const SizedBox(height: 8,),
                Text(widget.date,style: AppTextStyles.R16.copyWith(color: AppColor.gray400),),
                const SizedBox(height: 12,),
              ],
            ),
          )
        ],
      ),
    );
  }
}