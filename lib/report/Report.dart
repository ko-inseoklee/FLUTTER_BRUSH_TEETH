import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  bool isGraph = true;
  bool isPictureOpened = false;



  Widget GraphTab () {
    return Container(
        margin: EdgeInsets.only(top: 19),
        height: 614,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 397,
              width: 390,
              color: Color(0xffE1E5FF),
              child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16, left:24), width: 114, height: 23, alignment: Alignment.centerLeft,
                          child: Text('양치점수 평균',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff434343)),),
                        ),
                        Container(
                          width: 140,height: 45, margin: EdgeInsets.only(top: 2, left: 19), alignment: Alignment.centerLeft,
                          child:RichText(
                            text: TextSpan(
                              text: "53",
                              style: TextStyle(fontSize: 45, color: Color(0xff263FE9), fontWeight: FontWeight.w700),
                              children: [
                                TextSpan(text: "점", style: TextStyle(fontSize: 14, color: Color(0xff646464), fontWeight: FontWeight.w400),
                                )
                              ]
                            ),
                          )
                        ),
                        Container(
                          width: 174,height: 23, margin: EdgeInsets.only(top: 8, left: 24),
                          child: Text('2022년 10월 8일 - 10월 24일', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff646464))),
                        ),
                        Container(
                          width: 343, height: 280, margin: EdgeInsets.only(left: 10),
                            child: SingleChildScrollView(
                                padding: EdgeInsets.zero, reverse: true,
                                scrollDirection: Axis.horizontal,
                                child: Image.asset('images/reports/graph.png')
                            ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 115),
                          child: Text('100', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 38),
                          child: Text('75', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 38),
                          child: Text('50', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 38),
                          child: Text('25', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                        Container(
                          width: 20, height: 22, margin: EdgeInsets.only(top: 38),
                          child: Text('0', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff7B89EA))),
                        ),
                      ],
                    )
                  ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 34,left: 24), width: 133, height: 25,
              child: Text('양치 하이라이트', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff434343)),),
            ),
            Container(
              width: 354,
              height: 307,
              margin: EdgeInsets.only(left: 16,top: 5,right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffE1E5FF)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 151,
                    height: 29,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 22,top: 18),
                    child: Text("오늘의 양치",
                      style: TextStyle(
                        color: Color(0xff3A54FF),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0
                      ),
                    ),
                  ),
                  Container(
                    width: 302,
                    height: 82,
                    margin: EdgeInsets.only(top: 9,left: 22),
                    child: RichText
                      (text:
                      TextSpan(
                          text: "전체 사용자 중\n",
                        style: TextStyle(
                          color: Color(0xff4E4E4E),
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0
                        ),
                        children: [
                          TextSpan(
                            text: "하위 30%",
                            style: TextStyle(
                                color: Color(0xff263FE9),
                                fontWeight: FontWeight.w800,
                                fontSize: 24.0,
                              height: 1.5
                            ),
                          ),
                          TextSpan(
                              text: " 수준이에요.",
                            style: TextStyle(
                                color: Color(0xff4E4E4E),
                                fontWeight: FontWeight.w400,
                                fontSize: 24.0
                            ),
                          )
                        ]
                      ),
                    ),
                  ),
                  Container(
                    width: 302,
                    height: 13,
                    margin: EdgeInsets.only(left: 23),
                    decoration: BoxDecoration(
                      color: Color(0xffACB7FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 104,
                          height: 13,
                          decoration: BoxDecoration(
                            color: Color(0xff3A54FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 17, height: 29, margin: EdgeInsets.only(left: 23),
                          alignment: Alignment.centerLeft,
                          child: Text('0', style: TextStyle(fontSize: 10)),
                        ),
                        Container(
                          width: 30, height: 29, margin: EdgeInsets.only(left: 43),
                          alignment: Alignment.center,
                          child: Text('25', style: TextStyle(fontSize: 10)),
                        ),
                        Container(
                          width: 30, height: 29, margin: EdgeInsets.only(left: 43),
                          alignment: Alignment.center,
                          child: Text('50', style: TextStyle(fontSize: 10)),
                        ),
                        Container(
                          width: 30, height: 29, margin: EdgeInsets.only(left: 43),
                          alignment: Alignment.center,
                          child: Text('75', style: TextStyle(fontSize: 10)),
                        ),
                        Container(
                          width: 30, height: 29, margin: EdgeInsets.only(left: 43),
                          alignment: Alignment.centerLeft,
                          child: Text('100', style: TextStyle(fontSize: 10)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 312, margin: EdgeInsets.only(left: 23,top: 25),
                    child: Divider(color: Color(0xff858585), thickness: 0.5,),
                  ),
                  Container(
                    width: 302, height: 86, margin:EdgeInsets.only(left: 22),
                    child: RichText(
                       text: TextSpan(
                         text: "같은 20대 여성들보다\n",
                         style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w400,
                           color: Color(0xff4E4E4E),
                           height: 1.5
                         ),
                         children: [
                           TextSpan(
                             text: "12점 ",
                             style: TextStyle(
                                 fontSize: 23,
                                 fontWeight: FontWeight.w800,
                                 color: Color(0xff263FE9),
                                 height: 1.5
                             ),
                           ),
                           TextSpan(
                             text: "낮아요.",
                             style: TextStyle(
                                 fontSize: 23,
                                 fontWeight: FontWeight.w500,
                                 color: Color(0xff4E4E4E),
                                 height: 1.5
                             ),
                           )
                         ]
                       ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 354, height: 339, margin: EdgeInsets.only(left: 16, top: 17, right: 20),
              decoration: BoxDecoration(
                color: Color(0xffFFE6DC), borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 151, height: 29, margin: EdgeInsets.only(left: 22,top: 16), alignment: Alignment.centerLeft,
                    child: Text('오늘의 주의상황', style: TextStyle(color: Color(0xffFF7E47), fontSize: 12),),
                  ),
                  Container(
                    width: 302, height: 74, margin: EdgeInsets.only(left: 22, top: 9),
                    child: RichText(
                      text: TextSpan(
                        text: "오른쪽앞니 뒤쪽", style: TextStyle(color: Color(0xffFF7E47), fontSize: 23, fontWeight: FontWeight.w800, height: 1.5),
                        children: [
                          TextSpan(
                            text: "에\n", style: TextStyle(color: Color(0xff4E4E4E), fontSize: 23, fontWeight: FontWeight.w400, height: 1.5),
                          ),
                          TextSpan(
                            text: "충치가 생길 확률이 높아요.", style: TextStyle(color: Color(0xff4E4E4E), fontSize: 23, fontWeight: FontWeight.w400, height: 1.5),
                          ),
                        ]
                      ),
                    ),
                  ),
                  Container(
                    width: 130, height: 22, margin: EdgeInsets.only(left: 22,top: 9), alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xffFF7E47))
                    ),
                    child: Text('오른쪽 앞니 양치 미흡',style: TextStyle(fontSize: 12,height: 1.5,color: Color(0xffFF7E47)),),
                  ),
                  Container(
                    width: 311.5, margin: EdgeInsets.only(left: 21, top: 28),
                    child: Divider(color: Color(0xff858585), thickness: 0.5,),
                  ),
                  Container(
                    width: 302, height: 74, margin: EdgeInsets.only(left: 22, top: 15),
                    child: RichText(
                      text: TextSpan(
                          text: "양치 시간을\n", style: TextStyle(color: Color(0xff4E4E4E), fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
                          children: [
                            TextSpan(
                              text: "20초", style: TextStyle(color: Color(0xffFF7E47), fontSize: 23, fontWeight: FontWeight.w800, height: 1.5),
                            ),
                            TextSpan(
                              text: "늘려주세요.", style: TextStyle(color: Color(0xff4E4E4E), fontSize: 23, fontWeight: FontWeight.w400, height: 1.5),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Container(
                    width: 105, height: 22, margin: EdgeInsets.only(left: 22), alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffFF7E47))
                    ),
                    child: Text('양치 시간 부족',style: TextStyle(fontSize: 12,height: 1.5,color: Color(0xffFF7E47)),),
                  ),
                ],
              ),
            ),
            Container(
              width: 350, height: 302, margin: EdgeInsets.only(left: 20, top: 19, right: 20),
              decoration: BoxDecoration(
                color: Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 107, height: 24, alignment: Alignment.centerLeft, margin: EdgeInsets.only(top: 16,left: 27),
                    child: Text('양치시간 요약',style: TextStyle(fontSize: 12),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 9), width: 301, height: 24, alignment: Alignment.centerLeft,
                    child: Text('지난주 대비 평균 양치 시간이 늘었습니다.',style: TextStyle(fontSize: 17),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 39, height: 24, margin: EdgeInsets.only(left: 28,top: 21), alignment: Alignment.centerLeft,
                        child: Text('이번주',style: TextStyle(color: Color(0xff263FE9),fontSize: 13)),
                      ),
                      Container(
                        width: 161,height: 23, margin: EdgeInsets.only(left: 5,top: 18), alignment: Alignment.centerLeft,
                        child: Text('02:54:00', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: Color(0xff263FE9)),),
                      ),
                      Container(
                        width: 62, height: 24, margin: EdgeInsets.only(left: 34,top: 16),alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff263FE9), borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text('+ 50:50', style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13),),
                      )
                    ],
                  ),
                  Container(
                    width: 200, height: 23,margin: EdgeInsets.only(left: 28,top:5),
                    child: Text('지난주  02:03:10',style: TextStyle(color: Color(0xffA7A7A7), fontSize: 13),),
                  ),
                  Container(
                    width: 311.5,
                    margin: EdgeInsets.only(left: 17, top: 14, right: 21),
                    child: Divider(thickness: 0.5,color: Color(0xff858585),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 9), width: 301, height: 24, alignment: Alignment.centerLeft,
                    child: Text('지난달 대비 평균 양치 시간이 늘었습니다.',style: TextStyle(fontSize: 17),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 39, height: 24, margin: EdgeInsets.only(left: 28,top: 21), alignment: Alignment.centerLeft,
                        child: Text('이번달',style: TextStyle(color: Color(0xff263FE9),fontSize: 13)),
                      ),
                      Container(
                        width: 161,height: 23, margin: EdgeInsets.only(left: 5,top: 18), alignment: Alignment.centerLeft,
                        child: Text('02:50:00', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: Color(0xff263FE9)),),
                      ),
                      Container(
                        width: 62, height: 24, margin: EdgeInsets.only(left: 34,top: 16),alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff263FE9), borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text('+ 00:20', style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13),),
                      )
                    ],
                  ),
                  Container(
                    width: 200, height: 23,margin: EdgeInsets.only(left: 28,top:5),
                    child: Text('지난달  02:30:00',style: TextStyle(color: Color(0xffA7A7A7), fontSize: 13),),
                  ),
                ],
              ),
            ),
            //양치 횟수 요약
            Container(
              width: 350, height: 313, margin: EdgeInsets.only(left: 20, top: 19, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 107, height: 24, alignment: Alignment.centerLeft, margin: EdgeInsets.only(top: 16,left: 27),
                    child: Text('양치횟수 요약',style: TextStyle(fontSize: 12),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 9), width: 301, height: 24, alignment: Alignment.centerLeft,
                    child: Text('지난주 대비 평균 양치횟수가 줄었습니다.',style: TextStyle(fontSize: 17),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 39, height: 24, margin: EdgeInsets.only(left: 28,top: 21), alignment: Alignment.centerLeft,
                        child: Text('이번주',style: TextStyle(color: Color(0xffFF7E47),fontSize: 13)),
                      ),
                      Container(
                        width: 161,height: 23, margin: EdgeInsets.only(left: 5,top: 18), alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(text: '2.1 ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xffFF7E47)),
                            children: [
                              TextSpan(
                                text: "번", style: TextStyle(fontWeight: FontWeight.w400)
                              )
                            ]

                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 200, height: 23,margin: EdgeInsets.only(left: 28,top:5),
                    child: Text('지난주  2.5번',style: TextStyle(color: Color(0xffA7A7A7), fontSize: 13),),
                  ),
                  Container(
                    width: 311.5,
                    margin: EdgeInsets.only(left: 17, top: 14, right: 21),
                    child: Divider(thickness: 0.5,color: Color(0xff858585),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28,top: 9), width: 301, height: 43, alignment: Alignment.centerLeft,
                    child: Text('지난달과 이번달 평균 양치횟수가\n동일합니다.',style: TextStyle(fontSize: 17),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 39, height: 24, margin: EdgeInsets.only(left: 28,top: 21), alignment: Alignment.centerLeft,
                        child: Text('이번달',style: TextStyle(color: Color(0xff263FE9),fontSize: 13)),
                      ),
                      Container(
                        width: 161,height: 23, margin: EdgeInsets.only(left: 5,top: 18), alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(text: '2.1 ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xff263FE9)),
                              children: [
                                TextSpan(
                                    text: "번", style: TextStyle(fontWeight: FontWeight.w400)
                                )
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 200, height: 23,margin: EdgeInsets.only(left: 28,top:5),
                    child: Text('지난달  2.2 번',style: TextStyle(color: Color(0xffA7A7A7), fontSize: 13),),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }

  Widget ReportTab () {
    return Container(
        margin: EdgeInsets.only(top: 19),
        height: 614, color: Color(0xffF9f9f9),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xffE0E0E0),width: 1))
              ),
              width: 390, height: 495,padding: EdgeInsets.only(left: 10,top: 32,right: 12, bottom: 25),
              child: Image.asset("images/reports/calendar.png"),
            ),
            Container(
              color: Color(0xffFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 276, height: 28, margin: EdgeInsets.only(left: 28,top: 31),alignment: Alignment.centerLeft,
                            child: Text('2022년 10월 24일', style: TextStyle(fontSize: 25, color: Color(0xff000000)),),
                          ),
                          Container(
                            width: 276, height: 28, margin: EdgeInsets.only(left: 28),alignment: Alignment.centerLeft,
                            child: Text('* 파란색이 진할수록 양치 점수가 높아요.', style: TextStyle(fontSize: 11, color: Color(0xff8D8D8D)),),
                          ),
                        ],
                      ),
                      Container(
                        width: 60, height: 60,alignment: Alignment.center, margin: EdgeInsets.only(top: 24),
                        decoration: BoxDecoration(
                            color: Color(0xffB1BBFF),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text('53점',style: TextStyle(color: Color(0xff1A32D4), fontSize: 15,fontWeight: FontWeight.w700),),
                      )
                    ]
                  ),
                  Container(
                    width: 108, height: 29, margin: EdgeInsets.only(top: 41,left: 24),
                    child: Text('양치습관', style: TextStyle(color: Color(0xff4E4E4E), fontSize: 20,fontWeight: FontWeight.w700),),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 112, height: 27, margin: EdgeInsets.only(left: 24,top: 11),
                        child: Text('하루 양치횟수', style: TextStyle(color: Color(0xff626262), fontSize: 15),),
                      ),
                      Container(
                        width: 227, height: 27, margin: EdgeInsets.only(top: 11), alignment: Alignment.centerRight,
                        child: Text('2회 / 3', style: TextStyle(color: Color(0xff626262), fontSize: 15),),
                      )
                    ],
                  ),
                  Container(
                    width: 348, height: 95, margin: EdgeInsets.only(left:22, top: 5),
                    decoration: BoxDecoration(
                      color: Color(0xffE1E5FF),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 15,top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff6478FF)
                          ),
                          child: Text("1", style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15,),),
                        ),
                        Container(
                          width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 12,top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xff6478FF)
                          ),
                          child: Text("2", style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15,),),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 12,top: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xff6478FF)
                              ),
                              // child: Text("3", style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15,),),
                              child: DottedBorder(
                                strokeWidth: 1.5,
                                borderType: BorderType.RRect,
                                dashPattern: [6, 2],
                                color: Color(0xff263FE9),
                                padding: EdgeInsets.zero,
                                radius: Radius.circular(50),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  child: Container(
                                    height: 54,
                                    width: 54,
                                    color: Color(0xffC6CDFF), alignment: Alignment.center,
                                    child: Text("3", style: TextStyle(color: Color(0xffA0ACFF),fontSize: 15,),),
                                  ),
                                ),
                              )
                            ),
                            Container(
                              width: 54, height: 22, margin: EdgeInsets.only(top: 3, left: 12), alignment: Alignment.center,
                              child: Text('권장',style: TextStyle(color: Color(0xff7B89EA), fontSize: 14),),
                            )
                          ],
                        ),
                        Container(
                          width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 12,top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffC6CDFF)
                          ),
                          child: Text("4", style: TextStyle(color: Color(0xffA0ACFF),fontSize: 15,),),
                        ),
                        Container(
                          width: 54, height: 54, alignment: Alignment.center, margin: EdgeInsets.only(left: 12,top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffC6CDFF)
                          ),
                          child: Text("5", style: TextStyle(color: Color(0xffA0ACFF),fontSize: 15,),),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 112, height: 27, margin: EdgeInsets.only(left: 24,top: 21),
                        child: Text('하루 양치시간', style: TextStyle(color: Color(0xff626262), fontSize: 15),),
                      ),
                      Container(
                        width: 227, height: 27, margin: EdgeInsets.only(top: 11), alignment: Alignment.centerRight,
                        child: Text('평균 2:21 / 3:30', style: TextStyle(color: Color(0xff626262), fontSize: 15),),
                      )
                    ],
                  ),
                  Container(
                    width: 348, height: 114, margin: EdgeInsets.only(left:22, top: 3),
                    decoration: BoxDecoration(
                        color: Color(0xffE1E5FF),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 296, height: 29, margin: EdgeInsets.only(top: 16, left: 18, right: 22),
                          child: Row(
                            children: List<Widget>.generate(16, (index) =>
                                Container(
                                      width: 15, height: 28, margin: EdgeInsets.only(left: 3.5),
                                      decoration: BoxDecoration(
                                          color: index <= 11? Color(0xff6478FF) : Color(0xffC6CDFF),
                                          borderRadius: BorderRadius.circular(4.3)
                                      ),
                                    ),
                                )
                            // [
                            //
                            // ],
                          )
                        ),
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 32, height: 14, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 27, top: 14),
                                        child: Text('1회', style: TextStyle(fontSize: 14,color: Color(0xff9E9E9E)),),
                                      ),
                                      Container(
                                        width: 32, height: 14, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 6, top: 14),
                                        child: Text('2:49', style: TextStyle(fontSize: 14,color: Color(0xff6377F9)),),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 32, height: 14, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 27, top: 10),
                                        child: Text('2회', style: TextStyle(fontSize: 14,color: Color(0xff9E9E9E)),),
                                      ),
                                      Container(
                                        width: 32, height: 14, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 6, top: 10),
                                        child: Text('1:58', style: TextStyle(fontSize: 14,color: Color(0xff6377F9)),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 100, height: 22, margin: EdgeInsets.only(left: 130, top: 11), alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Color(0xffFF7E47))
                                ),
                                child: Text('평균 21초 부족',style: TextStyle(fontSize: 12, color: Color(0xffFF7E47)),),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ),
                  Row(
                    children: [
                      Container(
                        width: 66, height: 27, margin: EdgeInsets.only(left: 27, top: 21),
                        child: Text('구강용품',style: TextStyle(fontSize: 15, color: Color(0xff4E4E4E)),),
                      ),
                      Container(
                        width: 53, height: 31, margin: EdgeInsets.only(left: 177, top: 17), alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xffE1E5FF),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text('치실',style: TextStyle(color: Color(0xff263FE9), fontSize: 15),),
                      ),
                      Container(
                        width: 41, height: 31, margin: EdgeInsets.only(left: 5, top: 17), alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffE1E5FF),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text('+',style: TextStyle(color: Color(0xff263FE9), fontSize: 15),),
                      )
                    ],
                  ),
                  Container(
                    width: 108, height: 29, margin: EdgeInsets.only(left: 24,top: 36),
                    child: Text('치태 잔여율',style: TextStyle(color: Color(0xff4E4E4E), fontSize: 20, fontWeight: FontWeight.w700),),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 68, height: 26, margin: EdgeInsets.only(left: 27,top: 10),
                        child: Text('잔여량', style: TextStyle(color: Color(0xff0ff626262), fontSize: 15),),
                      ),
                      Container(
                        width: 234, height: 26, margin: EdgeInsets.only(left: 37,top: 10), alignment: Alignment.centerRight,
                        child: Text('20%', style: TextStyle(color: Color(0xff0ff626262), fontSize: 15),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 68, height: 26, margin: EdgeInsets.only(left: 27,top: 4),
                        child: Text('분포', style: TextStyle(color: Color(0xff0ff626262), fontSize: 15),),
                      ),
                      Container(
                        width: 234, height: 26, margin: EdgeInsets.only(left: 37,top: 4), alignment: Alignment.centerRight,
                        child: Text('앞윗니에 치태가 몰려있어요', style: TextStyle(color: Color(0xff0ff626262), fontSize: 13),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 67, height: 26, margin: EdgeInsets.only(left: 27,top: 15),
                        child: Text('치태 잔여율', style: TextStyle(color: Color(0xffFF7E47), fontSize: 12),),
                      ),
                      Container(
                        width: 67, height: 26, margin: EdgeInsets.only(left: 200,top: 15), alignment: Alignment.centerRight,
                        child: Text('치태 제거율', style: TextStyle(color: Color(0xff6377F9), fontSize: 12),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80, height: 38, margin: EdgeInsets.only(left: 27), alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xffFFE6DC),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text('20%', style: TextStyle(color: Color(0xffFF7E47), fontSize: 15),),
                      ),
                      Container(
                        width: 259, height: 38, margin: EdgeInsets.only(left: 2), alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff6377F9),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text('80%', style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),),
                      ),
                    ],
                  ),
                  Container(
                    width: 347, height: 77, margin: EdgeInsets.only(top: 12, left: 27, right: 22),
                    decoration: BoxDecoration(
                      color: Color(0xffFFE6DC),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 39, height: 19, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(top: 4.5,left: 66),
                              child: Text('앞니', style: TextStyle(color: Color(0xffFF7E47), fontSize: 14),),
                            ),
                            Container(
                              width: 53, height: 6, margin: EdgeInsets.only(left: 9, top: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFFFF7E47),
                                borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                            Container(
                              width: 39, height: 19, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(top: 4.5,left: 10),
                              child: Text('5%', style: TextStyle(color: Color(0xffFF7E47), fontSize: 14),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 39, height: 26, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 66),
                              child: Text('아랫니', style: TextStyle(color: Color(0xffFF7E47), fontSize: 14),),
                            ),
                            Container(
                              width: 90, height: 6, margin: EdgeInsets.only(left: 9, top: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFF7E47),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                            Container(
                              width: 39, height: 26, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 10),
                              child: Text('12%', style: TextStyle(color: Color(0xffFF7E47), fontSize: 14),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 39, height: 19, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 66),
                              child: Text('윗니', style: TextStyle(color: Color(0xffFF7E47), fontSize: 14),),
                            ),
                            Container(
                              width: 27, height: 6, margin: EdgeInsets.only(left: 9, top: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFF7E47),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                            Container(
                              width: 39, height: 19, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 10),
                              child: Text('3%', style: TextStyle(color: Color(0xffFF7E47), fontSize: 14),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 110, height: 26, margin: EdgeInsets.only(left:27, top: 27),
                        child: Text('사진으로 확인하기'),
                      ),
                      Container(
                        width: 15, height: 12, margin: EdgeInsets.only(top: 18),
                        child: FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              isPictureOpened = !isPictureOpened;
                            });
                          },
                          child: Icon(isPictureOpened? CupertinoIcons.chevron_down : CupertinoIcons.chevron_up, size: 12, color: Color(0xff626262),),),
                      )
                    ],
                  ),
                  isPictureOpened?
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 35),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom:15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 67, height: 26, alignment: Alignment.centerLeft,
                                      child: Text('앞니', style: TextStyle( color: Color(0xff9E9E9E), fontSize: 12, fontWeight: FontWeight.w600),),
                                    ),
                                    Container(
                                      width: 101, height: 22, margin: EdgeInsets.only(left: 149), alignment: Alignment.centerRight,
                                      child: Text('치석 잔여율 5%', style: TextStyle( color: Color(0xffFF7E47), fontSize: 12, fontWeight: FontWeight.w600)),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 317,height: 137,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset("images/reports/teeth/front.png",fit: BoxFit.fitWidth,)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom:15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 67, height: 26, alignment: Alignment.centerLeft,
                                      child: Text('아랫니', style: TextStyle( color: Color(0xff9E9E9E), fontSize: 12, fontWeight: FontWeight.w600),),
                                    ),
                                    Container(
                                      width: 101, height: 22, margin: EdgeInsets.only(left: 149), alignment: Alignment.centerRight,
                                      child: Text('치석 잔여율 12%', style: TextStyle( color: Color(0xffFF7E47), fontSize: 12, fontWeight: FontWeight.w600)),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 317,height: 137,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset("images/reports/teeth/bottom.png",fit: BoxFit.fitWidth,)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom:134),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 67, height: 26, alignment: Alignment.centerLeft,
                                      child: Text('윗니', style: TextStyle( color: Color(0xff9E9E9E), fontSize: 12, fontWeight: FontWeight.w600),),
                                    ),
                                    Container(
                                      width: 101, height: 22, margin: EdgeInsets.only(left: 149), alignment: Alignment.centerRight,
                                      child: Text('치석 잔여율 3%', style: TextStyle( color: Color(0xffFF7E47), fontSize: 12, fontWeight: FontWeight.w600)),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 317,height: 137,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset("images/reports/teeth/top.png",fit: BoxFit.fitWidth,)
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    )
                      :
                    Container(
                      height: 134,
                    )
                ],
              ),
            )
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyAppBar(title: "양치 리포트"),
          Container(
            height: 30,
            width: 350,
            margin: EdgeInsets.only(top: 23),
            decoration: BoxDecoration(
                color: Color(0xffE9E9E9),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      isGraph = !isGraph;
                    });
                  },
                  child: Container(
                    height: 26,
                    width: 173,
                    margin: EdgeInsets.only(left: 2),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isGraph? Color(0xffFFFFFF) : Color(0xffE9E9E9),
                    ),
                    child: Text('그래프',
                      style: TextStyle(
                        color: isGraph? Color(0xff263FE9) : Color(0xffB9B9B9)
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      isGraph = !isGraph;
                    });
                  },
                  child: Container(
                    height: 26,
                    width: 173,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: !isGraph? Color(0xffFFFFFF) : Color(0xffE9E9E9),
                    ),
                    child: Text('캘린더',
                      style: TextStyle(
                          color: !isGraph? Color(0xff263FE9) : Color(0xffB9B9B9)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          isGraph? GraphTab() : ReportTab()
        ],
      ),
    );
  }
}
