import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDetailPage extends StatefulWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  bool afterCamera = false;
  bool firstExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        leading: FlatButton(padding: EdgeInsets.zero, onPressed: () => Navigator.pop(context), child: Icon(CupertinoIcons.chevron_back, color: Color(0xff3F3F3F)) ,),
        title: Text("양치 결과 확인", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xff3F3F3F)),),

      ),
      backgroundColor: Color(0xffFFFFFF),
      body: ListView(
        children: [
          Container(
            width: 108, height: 29, margin: EdgeInsets.only(left: 20, top: 20),
            child: Text('치태 잔여율', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xff4E4E4E)),),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 98, height: 25, margin: EdgeInsets.only(left: 22, top: 28), alignment: Alignment.centerLeft,
                    child: Text('치태잔여 평균',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff434343)),),
                  ),
                  Container(
                    width: 110, height: 45, margin: EdgeInsets.only(top: 10, left: 24), alignment: Alignment.centerLeft,
                    child: Text.rich(
                      afterCamera?
                      TextSpan(
                        text: "20 ",
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFF7E47)
                        ),
                        children: [
                          TextSpan(
                              text: "%",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff646464)
                              )
                          )
                        ],
                      ):
                      TextSpan(
                        text: "-- ",
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff646464)
                        ),
                        children: [
                          TextSpan(
                              text: "%",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff646464)
                              )
                          )
                        ],
                      )
                    ),
                  ),
                  afterCamera?
                      Container(
                        width: 146, height: 14, margin: EdgeInsets.only(left: 22, top: 14),
                        child: Text('2022년 10월 24일 13:11', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff646464)),),
                      ) : Container()
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 76, height: 14, margin: EdgeInsets.only(left: afterCamera? 130: 166, top: 35), alignment: Alignment.center,
                    child: Text(!afterCamera?'촬영하기':'한번 더 찍기',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff646464)),),
                  ),
                  Container(
                    width: 61, height: 61, margin: EdgeInsets.only(top: 7, left: afterCamera? 130: 166),
                    decoration: BoxDecoration(
                      color: Color(0xffFF7E47),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          afterCamera = !afterCamera;
                        });
                      },
                        child: Icon(CupertinoIcons.photo_camera_solid,color: Color(0xffFFFFFF), size: 31,))
                  )
                ],
              )
            ],
          ),
          Container(
            height: 1,
            margin: EdgeInsets.only(top: 22),
            child: Divider(
              indent: 13, endIndent: 13, color: Color(0xff1B1B1B), thickness: 0.5,
            ),
          ),
          afterCamera?
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 23,top: 19),width: 58, height: 11,
                          child: Text('양치 1이후', style: TextStyle(fontSize: 11, color: Color(0xff4860FF), fontWeight: FontWeight.w400),),
                        ),
                        Container(
                          width: 7,height: 12, margin: EdgeInsets.only(left: 265, top: 26),
                          child: FlatButton(
                            padding: EdgeInsets.zero,
                            onPressed: (){
                              setState(() {
                                firstExpanded = !firstExpanded;
                              });
                            },
                            child: Icon(firstExpanded? CupertinoIcons.chevron_down:CupertinoIcons.chevron_up, color: Color(0xff434343),size: 12,),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 115, height: 25, margin: EdgeInsets.only(left: 22,top: 11),
                      child: Text('치태잔여율 1 결과', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff434343)),),
                    ),
                    firstExpanded?
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 67, height: 26, margin: EdgeInsets.only(left: 23,top: 15), alignment: Alignment.center,
                                      child: Text('치태 잔여율', style: TextStyle(color: Color(0xffFF7E47), fontSize: 12),),
                                    ),
                                    Container(
                                      width: 67, height: 26, margin: EdgeInsets.only(left: 200,top: 15), alignment: Alignment.centerRight,
                                      child: Text('치태 제거율', style: TextStyle(color: Color(0xff6377F9), fontSize: 12),),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 80, height: 38, margin: EdgeInsets.only(left: 23), alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFE6DC),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Text('20%', style: TextStyle(color: Color(0xffFF7E47), fontSize: 15, fontWeight: FontWeight.w700),),
                                  ),
                                  Container(
                                    width: 259, height: 38, margin: EdgeInsets.only(left: 2), alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Color(0xff6377F9),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Text('80%', style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15, fontWeight: FontWeight.w700),),
                                  ),
                                ],
                              ),
                              Container(
                                width: 347, height: 77, margin: EdgeInsets.only(top: 12, left: 23, right: 23),
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
                              Container(
                                margin: EdgeInsets.only(top: 34),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 68, height: 26, margin: EdgeInsets.only(left: 27,top: 4),
                                      child: Text('분포', style: TextStyle(color: Color(0xff434343), fontSize: 15, fontWeight: FontWeight.w400),),
                                    ),
                                    Container(
                                      width: 234, height: 26, margin: EdgeInsets.only(left: 37,top: 4), alignment: Alignment.centerRight,
                                      child: Text('앞윗니에 치태가 몰려있어요', style: TextStyle(color: Color(0xff434343),fontWeight: FontWeight.w600, fontSize: 14),),
                                    )
                                  ],
                                ),
                              ),
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
                                      margin: EdgeInsets.only(bottom:15),
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
                                    Container(

                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 77, height: 22, margin: EdgeInsets.only(left: 232, bottom: 50),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 16, height: 14,
                                      child: Icon(CupertinoIcons.camera_fill, color: Color(0xff868686), size: 14,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text('다시 찍기', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xff868686)),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ) :
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(top: 22),
                          child: Divider(
                            indent: 13, endIndent: 13, color: Color(0xff1B1B1B), thickness: 0.5,
                          ),
                        ),
                  ],
                ),
              ):
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 23, height: 21, margin: EdgeInsets.only(top: 69),
                      child: Image.asset("images/home/caution.png")
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 37), alignment: Alignment.center,
                      child: Text('치태잔여율 결과가 없습니다.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff8A8A8A)),),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text('촬영을 통해 확인해보세요.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff8A8A8A)),),
                    ),
                  ],
                ),
              )
        ],
      ),
    );
  }
}
