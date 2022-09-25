import 'package:flutter/cupertino.dart';

class BrushCountCard extends StatelessWidget {
  final int brushCnt;
  final int myIndex;
  final bool isClean;
  final Duration duration;
  const BrushCountCard({Key? key,required this.brushCnt,required this.myIndex,required this.isClean,required this.duration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int remain = 180 - duration.inSeconds;
    int remainMinute = remain ~/ 60;
    int remainSec = remain - (remainMinute * 60);
    return Container(
      width: 205,
      height: 177,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Color(isClean && myIndex == 0? 0xffFFFFFF: 0xffE8E8E8),
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 18,top: 17,right: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 3),
                  child: Text('양치${myIndex + 1}',
                    style: TextStyle(
                        color: Color(isClean && myIndex == 0? 0xff4860FF: 0xffA1A1A1),
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0
                    ),
                  ),
                ),
                isClean? Container(
                  margin: EdgeInsets.only(left: 5, top: 3),
                  child: Text('10:15 AM',
                    style: TextStyle(
                        color: Color(isClean && myIndex == 0? 0xff4860FF: 0xffA1A1A1),
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0
                    ),
                  ),
                ) : Container(),
                Container(
                  width: 36,
                  height: 18,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(isClean && myIndex == 0? 0xff7586FF: 0xffA1A1A1)
                  ),
                  child: Text('${myIndex+1}/3',
                    style: TextStyle(
                      color: Color(isClean && myIndex == 0? 0xffFFFFFF:0xffFBFBFB),
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0
                    ),
                  ),
                )
              ],
            ),
          ),
          isClean && myIndex == 0?
              Container(
                width: 58, height: 27, margin: EdgeInsets.only(left: 16, top: 25),
                child: Text('67점',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Color(0xff263FE9)),),
              )
              :
          Container(
            margin: EdgeInsets.only(top: 43), alignment: Alignment.center,
            child: Icon(CupertinoIcons.exclamationmark_triangle_fill,color: Color(0xffA1A1A1),size: 23.0,),
          ),
          isClean && myIndex == 0 ?
          Column(
            crossAxisAlignment: isClean? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 12, height: 12, margin: EdgeInsets.only(left: 18,top: 36),
                    child: Image.asset('images/home/timeBlue.png', ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:6,top: 32), width: 87, height: 13,
                    child: Text('${2-remainMinute}분 ${60-remainSec}초 양치',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xff4860FF)),),
                  )
                ],
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
                child: Text("${remainMinute}분 ${remainSec}초 부족해요."
                  ,style: TextStyle(
                      color: Color(0xffFF8C5B),
                      fontSize: 11.0,
                      fontWeight: FontWeight.w500,
                      height: 1.1
                  ),
                ),
              ),
            ],
          )
              :
          Container(
            height: 52,
            margin: EdgeInsets.only(top: 23),
            alignment: Alignment.center,
            child: (Text('아직 ${myIndex + 1}번째 양치를 하지 않았네요',
              style: TextStyle(
                  color: Color(0xffA1A1A1),
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0
              ),
            )),
          ),

        ],
      ),
    );
  }
}
