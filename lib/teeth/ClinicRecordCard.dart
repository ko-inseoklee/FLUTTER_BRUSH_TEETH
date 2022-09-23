import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum RecordType { CARE, CHECKUP }

class ClinicRecordCard extends StatelessWidget {
  final String date;
  final String title;
  final String place;
  final RecordType recordType;

  ClinicRecordCard({Key? key, required this.date, required this.title, required this.place,required this.recordType}) : super(key: key);

  late Color bgColor;
  late String iconImage;
  late Color titleColor;
  late Color iconColor;
  late Widget isCare;


  @override
  Widget build(BuildContext context) {
    switch (recordType){
      case RecordType.CARE:
        iconColor = Color(0xff263FE9);
        bgColor = Color(0xffDEE1FF);
        iconImage = "images/teeth/teethIcon.png";
        titleColor = Color(0xff263FE9);
        isCare = Container(margin: EdgeInsets.only(left: 24),child: Icon(Icons.more_horiz));
        break;
      case RecordType.CHECKUP:
        iconColor = Color(0xff505050);
        bgColor = Color(0xffECECEC);
        iconImage = "images/teeth/reportIcon.png";
        titleColor = Color(0xff505050);
        isCare = Container(
          width: 57, height: 22, alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xff505050), width: 1),
            color: Color(0xffC5C5C5)
          ),
          child: Text('연동 완료',style: TextStyle(color: Color(0xff636363), fontSize: 10, fontWeight: FontWeight.w400),),
        );
    }
    return Container(
      width: 360, height: 83, margin: EdgeInsets.only(left: 15,right: 15, bottom: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 19, height: 19, margin: EdgeInsets.only(left: 27, top: 22),
                    child: Image.asset(iconImage),
                  ),
                  Container(
                    width: 111, height: 22, margin: EdgeInsets.only(left: 14, top: 21),
                    child: Text(title, style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400, color: titleColor),),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 107, height: 22, margin: EdgeInsets.only(left: 26, top: 4),
                    child: Text(date,style: TextStyle(color: Color(0xff626262), fontSize: 13, fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    width: RecordType == RecordType.CHECKUP? 107 : 140, height: 22, margin: EdgeInsets.only(top: 4),
                    child: Text(place, style: TextStyle(color: Color(0xff626262), fontSize: 13, fontWeight: FontWeight.w400)),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 6,top: 20, right: 24), alignment: Alignment.topRight,
            child: isCare,
          )
        ],
      ),
    );
  }
}
