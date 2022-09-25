import 'dart:async';

import 'package:brushing_teeth/friends/DummyUserData.dart';
import 'package:brushing_teeth/home/BrushCountCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int brushCnt = 0;
  String dirtyLambImg = "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/7a41e076-f3b3-4895-9329-4f3ce50b375b/LAMB_2.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220925%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220925T133742Z&X-Amz-Expires=86400&X-Amz-Signature=78de7d3399bc7b9c85cb372676e74f1360cab7ccec67829fab29c84cea5d4c4e&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22LAMB%25202.gif%22&x-id=GetObject";
  String cleanLambImg = "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/d74e3cc7-83b8-495d-8b62-87e28a836332/LAMB_1.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220925%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220925T133924Z&X-Amz-Expires=86400&X-Amz-Signature=f98566772413f0b4bcea835549397299a03df14da7b0bfce575029a0b5466906&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22LAMB%25201.gif%22&x-id=GetObject";

  // Bottom sheet timer
  Duration duration = Duration();
  Timer? timer;
  String lastDuration = "00:00";
  bool isClean = false;

  //to check if sheet is open
  bool isSheetOpen = false;
  //to access setState of sheet
  late Function sheetSetState;

  // Start timer method
  void startTimer() {
    //Not related to the answer but you should consider resetting the timer when it starts
    timer?.cancel();
    duration = duration = Duration();

    print("timer start");
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = 1;

    //if sheet is open call setState if not don't
    if(isSheetOpen){
      sheetSetState(() {
        final seconds = duration.inSeconds + addSeconds;
        duration = Duration(seconds: seconds);
        lastDuration = "${duration.inMinutes < 10? "0${duration.inMinutes}" : duration.inMinutes}:${duration.inSeconds < 10? "0${duration.inSeconds}" : duration.inSeconds}";
      });
    }
    else{
      final seconds = duration.inSeconds + addSeconds;
      duration = Duration(seconds: seconds);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget Dirty () {
    return Image.network(dirtyLambImg);
  }

  Widget Clean () {
    return Image.network(cleanLambImg);
  }

  Widget BrushStatusWidget () {
    return Container(
      height: 44,
      child: Column(
        children: [
          Container(
            height: 26,
            width: 350,
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  left: isClean? 84: 237,
                  child: Container(
                    width: 38,
                    height: 17,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(isClean? 0xff263FE9 :0xffFF8C5B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(isClean? '양호':'위험',style: TextStyle(fontSize: 9,height: 1.5,fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: isClean? 99:252,
                  child: Container(
                    width: 9,
                    height: 9,
                    padding: EdgeInsets.zero,
                    child: Icon(CupertinoIcons.arrowtriangle_down_fill,size: 8,color: Color(isClean? 0xff263FE9 :0xffFF8C5B),),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.0),
                  padding: EdgeInsets.only(left:12.0),
                  width: isClean? 90 : 242.0,
                  height: 18.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Color(isClean? 0xff263FE9 :0xffFF8C5B),
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(25))
                  ),
                  child: Text('마지막 양치 이후',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 11.0,
                        height: 1.3
                    ),
                  ),
                ),
                Container(
                  width: isClean? 256: 104.0,
                  height: 18.0, alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    color: Color(0xffFBFBFB),
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 27.0,right: 8.0),
                          child: Image.asset('images/home/timeRed.png', color: Color(isClean? 0xff263FE9 :0xffFF8C5B),)
                      ),
                      Container(
                        margin: EdgeInsets.only(right: isClean? 18: 0),
                        child: Text(isClean?"0h 경과":'9h 경과',
                          style: TextStyle(
                              color: Color(isClean? 0xff263FE9 :0xffFF8C5B),
                              fontSize: 12.0
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget BrushCountWidget () {
    return Container(
      margin: EdgeInsets.only(left: 21, right: 20),
      height: 71.0, width: 349,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffFBFBFB)
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left:16.0),
            width: 81.0,
            child: Text("오늘 양치횟수"
              ,style: TextStyle(
                  color: Color(0xff4860FF),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 48.0,
            height: 48.0,
            margin: EdgeInsets.only(left: 34),
            decoration: isClean?
            BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xff7587FF)
            ) : BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/home/brushCountBackground.png')
                )
            ),
            child: Text("1", style: TextStyle(color: Color(isClean? 0xffFFFFFF : 0xffFF8C5B),fontSize: 13.0),),
          ),
          Container(
            alignment: Alignment.center,
            width: 48.0,
            height: 48.0,
            margin: EdgeInsets.only(left: 9),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/home/brushCountBackground.png')
                )
            ),
            child: Text("2", style: TextStyle(color: Color(0xffFF8C5B),fontSize: 13.0),),
          ),
          Container(
            alignment: Alignment.center,
            width: 48.0,
            height: 48.0,
            margin: EdgeInsets.only(left: 9),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/home/brushCountBackground.png')
                )
            ),
            child: Text("3", style: TextStyle(color: Color(0xffFF8C5B),fontSize: 13.0),),
          ),
          Container(
            margin: EdgeInsets.only(left: 21),
            child: Image.asset('images/home/brushCountButton.png',color: Color(0xff424242),),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(isClean? 0xffE1E5FF : 0xffFFECE3),
      child: Column(
        children: [
          Container(
            height: 455,
            child: Stack(
              children: [
                Container(
                  margin:EdgeInsets.only(top:27),
                    child: isClean? Clean() : Dirty()
                ),
                Container(
                  margin: EdgeInsets.only(left: 325.0, top: 55.0),
                  width: 48.0,
                  height: 48.0,
                  padding: EdgeInsets.only(left: 4.85),
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: Color(0xffA9A9A9),width: 0.25),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Image.asset(MyProfile.profileImage),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${MyProfile.name}님,',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                  height: 1.5,
                                  color: Color(0xff3F3F3F)
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                  text: '현재 구강이 ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18.0,
                                      height: 1.5,
                                      color: Color(0xff3F3F3F)
                                  ),
                                  children: [
                                    TextSpan(
                                      text: isClean? "건강":'위험',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18.0,
                                          height: 1.5,
                                          color: Color(isClean? 0xff263FE9 : 0xffFF8C5B)
                                      ),
                                    ),
                                    TextSpan(
                                      text: '한 상태입니다',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18.0,
                                          height: 1.5,
                                          color: Color(0xff3F3F3F)
                                      ),
                                    )
                                  ]
                              ),
                            )
                          ],
                        ),
                        margin: EdgeInsets.only(left: 24.0, top: 52.0),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 328,
                    child: BrushStatusWidget()
                ),
                Positioned(
                  top: 384,
                    child: BrushCountWidget()
                ),
                Container(
                  width: 238, height: 59, margin: EdgeInsets.only(top: 52,left: 23),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){
                      isSheetOpen = true;
                      startTimer();
                      showModalBottomSheet<void>(
                        context: context,
                        isDismissible: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(34.0),
                        ),
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                            builder: (BuildContext context, void Function(void Function()) SheetSetState) {
                              sheetSetState = SheetSetState;
                              return GestureDetector(
                                onTap: () {
                                  timer!.cancel();
                                  setState(() {
                                    isClean = true;
                                  });
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 324,
                                  child: Container(
                                    height: 324,
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 41,left: 35), width: 180,
                                              alignment: Alignment.centerLeft,
                                              child: Text('양치기님',style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18.0,
                                                  height: 1.5,
                                                  color: Color(0xff3F3F3F)
                                              ),),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 35),
                                              child: Text.rich(
                                                TextSpan(
                                                    text: '양치가 ',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18.0,
                                                        color: Color(0xff3F3F3F)
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text:   duration.inSeconds > 5? "완료" :'시작',
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 18.0,
                                                            color:  duration.inSeconds > 5? Color(0xff263FE9) : Color(0xffFF7E47)
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '되었습니다',
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 18.0,
                                                            color: Color(0xff3F3F3F)
                                                        ),
                                                      )
                                                    ]
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 34, top: 30), width: 30, height: 30,
                                                  child: Image.asset("images/home/timeBlue.png",fit: BoxFit.cover, width: 30,height: 30, color: duration.inSeconds > 5? Color(0xff263FE9) : Color(0xffFF7E47),),
                                                ),
                                                Container(
                                                  width: 175, margin: EdgeInsets.only(left: 5, top: 28),
                                                    child: Text(lastDuration, style: TextStyle(fontSize: 40, color: duration.inSeconds > 5? Color(0xff263FE9) : Color(0xffFF7E47)),)
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: 111, height: 34, margin: EdgeInsets.only(left: 70, top: 11),
                                              child: Text('목표시간 03:00',style: TextStyle(color: Color(0xff939393), fontWeight: FontWeight.w400, fontSize: 13),),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width:33.13, height: 15.12, margin: EdgeInsets.only(left: 37, top: 45),
                                                  child: Image.asset("images/home/battery.png"),
                                                ),
                                                Container(
                                                  width: 23,height: 15.12, margin: EdgeInsets.only(top: 47, left: 11),
                                                  child: Text('70%', style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff9D9D9D)),),
                                                )
                                              ]

                                            )
                                          ],
                                        ),
                                        Container(
                                          width: 125, height: 295, margin: EdgeInsets.only(top: 29,left: 18),
                                          child: Image.asset("images/home/brushPopup.png",),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    child: Text(""),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 177,
            margin: EdgeInsets.only(left: 21.0, top: 14.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return BrushCountCard(brushCnt: brushCnt, myIndex: index, isClean: isClean,duration: duration,);
              },

            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 21, right: 20),
            height: 78.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffFBFBFB)
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left:16.0),
                  width: 70.0,
                  child: Text("치태잔여율"
                    ,style: TextStyle(
                        color: Color(0xff4860FF),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: VerticalDivider(
                    width: 0,
                    thickness: 0,
                    endIndent: 10.0,
                    indent: 10.0,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 13,
                        margin: EdgeInsets.only(top: 22,left: 17),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(right: 5),
                              child: Icon(CupertinoIcons.camera_fill,size: 12.0,color: Color(0xff4860FF),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: 114,
                              child: Text("최근 치태 잔여 20%"
                                ,style: TextStyle(
                                    color: Color(0xff4860FF),
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 103,
                        height: 18,
                        decoration: BoxDecoration(
                          color: Color(0xffFFE9E0),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        margin: EdgeInsets.only(top: 7, left: 16),
                        alignment: Alignment.center,
                        child: Text("아랫니를 더 꼼꼼히!"
                          ,style: TextStyle(
                              color: Color(0xffFF8C5B),
                              fontSize: 11.0,
                              fontWeight: FontWeight.w500,
                            height: 1.1
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22),
                  child: FlatButton(
                    onPressed: (){},
                    padding: EdgeInsets.zero,
                    child: Text("더보기"
                      ,style: TextStyle(
                          color: Color(isClean? 0xff424242: 0xffD3D3D3),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
