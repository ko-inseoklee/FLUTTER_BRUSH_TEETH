import 'package:flutter/cupertino.dart';

class BrushCountCard extends StatelessWidget {
  final int brushCnt;
  final int myIndex;
  const BrushCountCard({Key? key,required this.brushCnt,required this.myIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 205,
      height: 177,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Column(
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
                        color: Color(0xffA1A1A1),
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0
                    ),
                  ),
                ),
                Container(
                  width: 36,
                  height: 18,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffA1A1A1)
                  ),
                  child: Text('${myIndex+1}/3',
                    style: TextStyle(
                      color: Color(0xffFBFBFB),
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 43),
            child: Icon(CupertinoIcons.exclamationmark_triangle_fill,color: Color(0xffA1A1A1),size: 23.0,),
          ),
          Container(
            height: 52,
            margin: EdgeInsets.only(top: 23),
            child: (Text('아직 ${myIndex + 1}번째 양치를 하지 않았네요',
              style: TextStyle(
                  color: Color(0xffA1A1A1),
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0
              ),
            )),
          )
        ],
      ),
    );
  }
}
