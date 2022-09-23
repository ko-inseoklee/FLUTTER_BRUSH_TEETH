import 'package:brushing_teeth/teeth/ClinicRecordCard.dart';
import 'package:brushing_teeth/teeth/ToggleImagePicture.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeethDetail extends StatefulWidget {
  const TeethDetail({Key? key}) : super(key: key);

  @override
  _TeethDetailState createState() => _TeethDetailState();
}

class _TeethDetailState extends State<TeethDetail> {

  bool isDialogClicked = false;
  bool addRecently = false;
  bool addRecentlyPicture = false;

  late List<Widget> cards;

  @override
  void initState(){
    super.initState();
  }

  Widget TypeCard(String title){
    bool check = title == "충치치료";

    return Container(
      width: 98, height: 43, alignment: Alignment.center, margin: EdgeInsets.only(right: 5, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(check && isDialogClicked? 0xff263FE9 : 0xffCFCFCF), width: 2),
        color: check && isDialogClicked? Color(0xffDEE1FF): Color(0xffFFFFFF)
      ),
      child: Text(title, style: TextStyle(fontSize: 14, color: check && isDialogClicked ?  Color(0xff263FE9) : Color(0xff616161)),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xffFFFFFF),
        leading: FlatButton(padding: EdgeInsets.zero, onPressed: () => Navigator.pop(context), child: Icon(CupertinoIcons.chevron_back, color: Color(0xff3F3F3F)) ,),
        title: Text("28번 치아", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, color: Color(0xff3F3F3F)),),
      ),
      backgroundColor: Color(0xffFFFFFF),
    body: Container(
        child: ListView(
          children: [
            Container(
              width: 112, height: 22, margin: EdgeInsets.only(top: 22, left: 26),
              child: Text('사진 데이터', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400, color: Color(0xff636363)),),
            ),
            Container(
              width: 360, height: 182, margin: EdgeInsets.only(left: 15, top: 19, right: 15),
              decoration: BoxDecoration(
                color: Color(0xffFFECE4),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40, height: 17, margin: EdgeInsets.only(top: 16, left: 18), alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xffFF7E47), borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text('경고',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                      ),
                      Container(
                        width: 61, height: 19, alignment: Alignment.centerLeft, margin: EdgeInsets.only(top: 16,left: 9),
                        child: Text(' + 62일 째',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xffFFAD8A)),),
                      )
                    ],
                  ),
                  Container(
                    width: 260, height: 20, margin: EdgeInsets.only(top: 3, left: 17),
                    child: Text('충치 위험도가', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Color(0xffFF7E47)),),
                  ),
                  Container(
                    width: 220, height: 20, margin: EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Container(
                          child: Text('현재 45% 입니다', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xffFF7E47)),),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 2),
                          child: Image.asset("images/teeth/upRiseIcon.png"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 104, margin: EdgeInsets.only(left: 16),
                    child: Stack(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 48, height: 22,margin: EdgeInsets.only(left: 6,top: 30), alignment: Alignment.topLeft,
                                child: Text('위험도', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xffFFAE8B)),),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 48, height: 22, margin: EdgeInsets.only(left: 22, top: 41,),alignment: Alignment.center,
                                    child: Text('35%', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xffFF7E47)),),
                                  ),
                                  Container(
                                    width: 33, height: 41, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(left: 28),
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFBA9C)
                                    ),
                                    child: Text('5/15', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xffFF7E47))),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 48, height: 22, margin: EdgeInsets.only(left: 10, top: 29),alignment: Alignment.center,
                                    child: Text('45%', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xffFF7E47)),),
                                  ),
                                  Container(
                                    width: 33, height: 53, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(left: 16),
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFBA9C)
                                    ),
                                    child: Text('5/28', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xffFF7E47))),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 48, height: 22, margin: EdgeInsets.only(left: 10, top: 29),alignment: Alignment.center,
                                    child: Text('45%', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xffFF7E47)),),
                                  ),
                                  Container(
                                    width: 33, height: 53, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(left: 16),
                                    decoration: BoxDecoration(
                                        color: Color(addRecentlyPicture? 0xffFFBA9C:0xffFF966A)
                                    ),
                                    child: Text('6/25', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(addRecentlyPicture? 0xffFF7E47 : 0xffFFFFFF))),
                                  )
                                ],
                              ),
                              addRecentlyPicture?
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 48, height: 22, margin: EdgeInsets.only(left: 10),alignment: Alignment.center,
                                    child: Text('67%', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xffFF7E47)),),
                                  ),
                                  Container(
                                    width: 33, height: 82, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(left: 16),
                                    decoration: BoxDecoration(
                                        color: Color(0xffFF966A)
                                    ),
                                    child: Text('7/26', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF))),
                                  )
                                ],
                              ):Container()
                            ],
                          ),
                        ),
                        Positioned(
                          top: 55,
                          left: 45,
                          child: Container(
                              width: addRecentlyPicture? 277 :207,
                              child: Divider(thickness: 1, color: Color(0xffFF7E47),),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            ToggleImagePicture(isAddRecently: addRecentlyPicture, onToggled: (){
              setState(() {
                addRecentlyPicture = !addRecentlyPicture;
              });
            },),
            Divider(indent: 18, endIndent: 16, thickness: 1, color: Color(0xffEEEEEE),),
            Row(
              children: [
                Container(
                  width: 111, height: 22, margin: EdgeInsets.only(left: 26, top: 25), alignment: Alignment.centerLeft,
                  child: Text('진료 기록', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff636363)),),
                ),
                Container(
                  width: 16, height: 16,
                  margin: EdgeInsets.only(left: 209,top: 25),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      isDialogClicked = false;
                      showDialog( context: context, builder: (context){
                        return StatefulBuilder(builder: (context, dialSetState){
                          cards = [
                            TypeCard("정기검사"),
                            TypeCard("스케일링"),
                            TypeCard("충치치료"),
                            TypeCard("X-RAY"),
                            TypeCard("발치"),
                            TypeCard("보철"),
                            TypeCard("화이트닝"),
                            TypeCard("기타"),
                          ];
                          return AlertDialog(
                            insetPadding: EdgeInsets.zero,
                            contentPadding: EdgeInsets.zero,
                            titlePadding: EdgeInsets.zero,
                            actionsPadding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            content: FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                dialSetState(() {
                                  setState(() {
                                    isDialogClicked = !isDialogClicked;
                                  });
                                });
                              },
                              child: Container(
                                width: 361,
                                height: 734,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 111, height: 22, margin: EdgeInsets.only(top: 26,left: 26),
                                      child: Text('진료분야',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400, color: Color(0xff636363)),),
                                    ),
                                    Container(
                                        width: 310, height: 154, margin: EdgeInsets.only(top: 18, left: 26, right: 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                cards[0],
                                                cards[1],
                                                cards[2]
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                cards[3],
                                                cards[4],
                                                cards[5]
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                cards[6],
                                                cards[7],
                                              ],
                                            )
                                          ],
                                        )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 27, top: 12), width: 111, height: 22,
                                      child: Text('장소',style: TextStyle(color: Color(0xff636363), fontSize: 15, fontWeight: FontWeight.w400),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 7,left: 29), width: 144, height: 34,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: isDialogClicked? Color(0xff263FE9) : Color(0xffD4D4D4), width: 1)
                                      ),
                                      child: isDialogClicked? Text('한마음치과 포항점', style: TextStyle(color: Color(0xff263FE9), fontSize: 15, fontWeight: FontWeight.w400),)
                                          : Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 14, height: 14, margin: EdgeInsets.only(left: 25),
                                              child: Icon(CupertinoIcons.search, color: Color(0xffACACAC), size: 14,)),
                                          Container(
                                            margin: EdgeInsets.only(left: 3,),
                                            width: 79, height: 22, alignment: Alignment.center,
                                            child: Text('주소 찾기', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400, color: Color(0xffACACAC)),),
                                          )
                                        ],
                                      )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 27, top: 13), width: 111, height: 22,
                                      child: Text('진료 날짜',style: TextStyle(color: Color(0xff636363), fontSize: 15, fontWeight: FontWeight.w400),),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7,left: 29), width: 144, height: 34,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: isDialogClicked? Color(0xff263FE9) : Color(0xffD4D4D4), width: 1)
                                        ),
                                        child: isDialogClicked? Text('2022년 10월 25일', style: TextStyle(color: Color(0xff263FE9), fontSize: 15, fontWeight: FontWeight.w400),)
                                            : Container(
                                          margin: EdgeInsets.only(left: 3,),
                                          width: 79, height: 22, alignment: Alignment.center,
                                          child: Text('년 / 월 / 일', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400, color: Color(0xffACACAC)),),
                                        )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 27, top: 13), width: 140, height: 22,
                                      child: Text.rich(
                                          TextSpan(text: '다음 진료 날짜',style: TextStyle(color: Color(0xff636363), fontSize: 15, fontWeight: FontWeight.w400),
                                            children: [
                                              TextSpan(
                                                text: " (선택)",
                                                style: TextStyle(color: Color(0xffCBCBCB), fontWeight: FontWeight.w400,fontSize: 12)
                                              )
                                            ]
                                          ),

                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7,left: 29), width: 144, height: 34,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: isDialogClicked? Color(0xff263FE9) : Color(0xffD4D4D4), width: 1)
                                        ),
                                        child: isDialogClicked? Text('2022년 11월 25일', style: TextStyle(color: Color(0xff263FE9), fontSize: 15, fontWeight: FontWeight.w400),)
                                            : Container(
                                          margin: EdgeInsets.only(left: 3,),
                                          width: 79, height: 22, alignment: Alignment.center,
                                          child: Text('년 / 월 / 일', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400, color: Color(0xffACACAC)),),
                                        )
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 53, height: 22, margin: EdgeInsets.only(left: 27, top: 5), alignment: Alignment.centerLeft,
                                          child: Text('진료 알림', style: TextStyle(color: Color(0xff636363), fontSize: 12, fontWeight: FontWeight.w400, height: 1.5),),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 7), width: 39, height: 18,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                              color: Color(isDialogClicked? 0xff8D9CFF : 0xffACACAC)
                                            ),
                                            child:Container(
                                                width: 14, height: 14,
                                              margin: EdgeInsets.all(2),
                                              alignment: isDialogClicked? Alignment.centerRight: Alignment.centerLeft,
                                              child: Icon(CupertinoIcons.circle_fill, color: Color(isDialogClicked? 0xffFFFFFF:0xffD9D9D9), size: 14,),
                                            )
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 27, top: 13), width: 145, height: 22,
                                      child: Text.rich(
                                        TextSpan(text: 'X-RAY 사진추가',style: TextStyle(color: Color(0xff636363), fontSize: 15, fontWeight: FontWeight.w400),
                                            children: [
                                              TextSpan(
                                                  text: " (선택)",
                                                  style: TextStyle(color: Color(0xffCBCBCB), fontWeight: FontWeight.w400,fontSize: 12)
                                              )
                                            ]
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 89, height: 89, margin: EdgeInsets.only(left: 28, top: 9),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffD4D4D4), width: 1),
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: 31, height: 29,
                                        child: Image.asset("images/teeth/album.png"),
                                      )
                                    ),Container(
                                      width: 105, height: 46, margin: EdgeInsets.only(left: 128, top: 43), alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: isDialogClicked?Color(0xff7385FF) :Color(0xffEBEBEB),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: FlatButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {
                                            setState(() {
                                              addRecently = true;
                                            });
                                            Navigator.pop(context);
                                          },
                                          child: Text('완료', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Color(isDialogClicked? 0xffFFFFFF:0xff868686)),)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                      });
                    },
                    child: Icon(Icons.add, size: 16, color: Color(0xff636363),)
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 23),
              child: Column(
                children: [
                  addRecently?
                  ClinicRecordCard(recordType: RecordType.CARE, date: "2022.10.25", title: '충치 치료', place: "한마음치과 포항점") : Container(height: 0.01,),
                  ClinicRecordCard(recordType: RecordType.CARE, date: "2022.10.1", title: '충치 치료', place: "한마음치과 포항점"),
                  ClinicRecordCard(recordType: RecordType.CHECKUP, date: "2022.9.24", title: '건강검진', place: "한마음치과 포항점"),
                  ClinicRecordCard(recordType: RecordType.CARE, date: "2021.7.9", title: '충치 치료', place: "한마음치과 포항점"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
