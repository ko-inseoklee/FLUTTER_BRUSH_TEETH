import 'package:flutter/cupertino.dart';

class ImagePictureCard extends StatelessWidget {
  final bool isPicture;
  final String image;
  final String picture;
  final String date;
  final String percent;
  const ImagePictureCard({Key? key, required this.isPicture,required this.image, required this.picture,required this.date, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112, height: 140, margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: 112, height: 112, alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffDEE1FF),
              borderRadius: BorderRadius.circular(10)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: isPicture? Stack(
                children: [
                  Container(
                    width: 56, height: 57,
                    child: Image.asset("images/teeth/entireTeeth.png"),
                  ),
                  Container(
                    child: Image.asset(picture),
                  )
                ],
              ):
              Image.asset(image),
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 4),
            width: 100,
            height: 23,
            child: Row(
              children: [
                Text(date, style: TextStyle(color: Color(0xff4D4D4D),fontSize: 12,fontWeight: FontWeight.w400),),
                Container(margin: EdgeInsets.only(left: 6),child: Text(percent, style: TextStyle(color: Color(0xffFF7E47),fontSize: 12,fontWeight: FontWeight.w400),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
