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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFECE3),
      child: Column(
        children: [
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
                                text: '위험',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18.0,
                                    height: 1.5,
                                    color: Color(0xffFF8C5B)
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
                Container(
                    margin: EdgeInsets.only(right: 22.0, top: 50.0),
                    width: 48.0,
                    height: 48.0,
                    padding: EdgeInsets.only(left: 4.85),
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        border: Border.all(color: Color(0xffA9A9A9),width: 0.25),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Image.asset(MyProfile.profileImage)
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:34.0,left: 112.0),
            height: 150,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 94.0,left: 23.0),
                  child: Image.asset('images/home/brush.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 139.0),
                  child: Image.asset('images/home/brushBar.png'),
                ),
                Container(
                  child: Image.asset('images/home/dirtySheep.png'),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 34.0),
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
                          left: 227,
                          child: Container(
                            width: 38,
                            height: 17,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xffFF8C5B),
                                borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text('위험',style: TextStyle(fontSize: 9,height: 1.5,fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 242,
                          child: Container(
                            width: 9,
                            height: 9,
                            padding: EdgeInsets.zero,
                            child: Icon(CupertinoIcons.arrowtriangle_down_fill,size: 8,color: Color(0xffFF8C5B),),
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
                        width: 242.0,
                        height: 18.0,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color(0xffFF8C5B),
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
                        width: 104.0,
                        height: 18.0,
                        decoration: BoxDecoration(
                          color: Color(0xffFBFBFB),
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
                        ),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 27.0,right: 8.0),
                                child: Image.asset('images/home/timeRed.png')
                            ),
                            Text('9h 경과',
                              style: TextStyle(
                                  color: Color(0xffFF8C5B),
                                  fontSize: 12.0
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
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 21, right: 20),
            height: 71.0,
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/home/brushCountBackground.png')
                      )
                  ),
                  child: Text("1", style: TextStyle(color: Color(0xffFF8C5B),fontSize: 13.0),),
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
          ),
          Container(
            height: 177,
            margin: EdgeInsets.only(left: 21.0, top: 14.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return BrushCountCard(brushCnt: brushCnt, myIndex: index);
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
                  margin: EdgeInsets.only(left: 32),
                  child: Text("더보기"
                    ,style: TextStyle(
                        color: Color(0xffD3D3D3),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500
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
