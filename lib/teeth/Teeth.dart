import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:flutter/cupertino.dart';

class Teeth extends StatelessWidget {
  const Teeth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyAppBar(title: "구강고민"),
          Container(
            width: 247,
            height: 45,
            margin: EdgeInsets.only(left: 27,top: 14),
            child: RichText(
              text: TextSpan(
                text: "양치기님,\n",
                style: TextStyle(
                  color: Color(0xff3E3E3E),
                  fontSize: 19,
                  fontWeight: FontWeight.w400
                ),
                children: [
                  TextSpan(
                  text: "현재 ",
                  style: TextStyle(
                      color: Color(0xff3E3E3E),
                      fontSize: 19,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  TextSpan(
                    text: "3개",
                    style: TextStyle(
                        color: Color(0xff3E3E3E),
                        fontSize: 19,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  TextSpan(
                    text: "의 치아 기록이 있어요.",
                    style: TextStyle(
                        color: Color(0xff3E3E3E),
                        fontSize: 19,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ]
              ),
            ),
          ),
          Container(
            width: 362,
            height: 493,
            margin: EdgeInsets.only(top: 15,left: 14),
            decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('images/teeth/teethFrame.png'),
                Image.asset('images/teeth/direction.png')
              ],
            ),
          ),
          Container(
            width: 166, height: 31,
            margin: EdgeInsets.only(top: 36,left: 106),
            alignment: Alignment.center,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "치아를 눌러 치아 정보 및\n",
                style: TextStyle(
                  color: Color(0xff6377F9),
                  fontSize: 11,
                  fontWeight: FontWeight.w400
                ),
                children: [
                  TextSpan(text: "지난 진료 데이터를 확인하세요.")
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
