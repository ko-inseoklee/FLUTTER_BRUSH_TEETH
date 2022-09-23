import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:brushing_teeth/teeth/TeethCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Teeth extends StatefulWidget {

  const Teeth({Key? key}) : super(key: key);

  @override
  _TeethState createState() => _TeethState();
}

class _TeethState extends State<Teeth> {
  bool isClicked = false;

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
                Image.asset(isClicked? 'images/teeth/teethFrameAfter.png':'images/teeth/teethFrame.png'),
                // Image.asset('images/teeth/direction.png'),
                Positioned(
                  top: 80,
                    child: Container(
                      width: 55, height: 40, alignment: Alignment.center,
                      child: Text('위', style: TextStyle(color: Color(0xff8B8B8B), fontSize: 13, fontWeight: FontWeight.w400),),
                  )
                ),
                Positioned(
                    left: 75,
                    child: Container(
                      width: 55, height: 40, alignment: Alignment.center,
                      child: Text('왼쪽', style: TextStyle(color: Color(0xff8B8B8B), fontSize: 13, fontWeight: FontWeight.w400),),
                    )
                ),
                Positioned(
                    bottom: 66,
                    child: Container(
                      width: 55, height: 40, alignment: Alignment.topCenter,
                      child: Text('아래', style: TextStyle(color: Color(0xff8B8B8B), fontSize: 13, fontWeight: FontWeight.w400),),
                    )
                ),
                Positioned(
                    right: 70,
                    child: Container(
                      width: 55, height: 40, alignment: Alignment.center,
                      child: Text('오른쪽', style: TextStyle(color: Color(0xff8B8B8B), fontSize: 13, fontWeight: FontWeight.w400),),
                    )
                ),
                Positioned(
                    left: 30, bottom: 189,
                    child: Container(
                      width: 44, height: 41, alignment: Alignment.center,
                      child: FlatButton(padding: EdgeInsets.zero, onPressed: () {
                        setState(() {
                          isClicked = !isClicked;
                        });
                      }, child: Text(''),),
                    )
                ),
              ],
            ),
          ),
          isClicked?
          TeethCard()
              :
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
