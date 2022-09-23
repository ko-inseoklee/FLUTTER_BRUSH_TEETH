import 'package:brushing_teeth/teeth/TeethDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeethCard extends StatelessWidget {
  const TeethCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362, height: 87, margin: EdgeInsets.only(left: 14, top: 7),
      decoration: BoxDecoration(
        color: Color(0xffFF7E47), borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 19, height: 23, margin: EdgeInsets.only(left: 26,top: 22),
                    child: Image.asset('images/teeth/teethReport.png'),
                  ),
                  Container(
                    width: 111, height: 25, margin: EdgeInsets.only(left: 13, top: 14),
                    child: Text('28번 치아',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                  )
                ],
              ),
              Container(
                width: 236, height: 22, margin: EdgeInsets.only(left: 26, top: 7),
                child: Text('진료기록 1개, 사진 데이터 5개', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xffFFE6DC)),),
              ),
            ],
          ),
          Container(
            width: 59, height: 59, margin: EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              color: Color(0xffFFE6DC), borderRadius: BorderRadius.circular(15)
            ),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return TeethDetail();
              })),
              child: Icon(CupertinoIcons.chevron_forward, color: Color(0xffFF7E47),),

            ),
          )
        ],
      ),
    );
  }
}
