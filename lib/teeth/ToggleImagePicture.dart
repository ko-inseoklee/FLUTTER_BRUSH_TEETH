import 'package:brushing_teeth/teeth/ImagePictureCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleImagePicture extends StatefulWidget {
  const ToggleImagePicture({Key? key,required this.isAddRecently, required this.onToggled}) : super(key: key);
  final bool isAddRecently;
  final VoidCallback onToggled;

  @override
  State<ToggleImagePicture> createState() => _ToggleImagePictureState();
}

class _ToggleImagePictureState extends State<ToggleImagePicture> {
  bool isPicture = true;
  late List<ImagePictureCard> images;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    images = [
      ImagePictureCard(isPicture: isPicture, image: "images/teeth/thirdTeeth.png", picture: "images/teeth/27per.png", date: "6월 25일", percent: "45%",),
      ImagePictureCard(isPicture: isPicture, image: "images/teeth/secondTeeth.png", picture: "images/teeth/45per.png", date: "5월 28일", percent: "45%",),
      ImagePictureCard(isPicture: isPicture, image: "images/teeth/firstTeeth.png", picture: "images/teeth/45per.png", date: "5월 15일", percent: "35%",)
    ];
    if(widget.isAddRecently){
      images.insert(0, ImagePictureCard(isPicture: isPicture, image: "images/teeth/fourthTeeth.png", picture: "images/teeth/67per.png", date: "7월 26일", percent: "67%",));
    }

    return Container(
      height: 168, margin: EdgeInsets.only(top: 20, bottom: 34),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20), width: 250, height: 22,
                child: Text('총 ${images.length}장의 사진',style: TextStyle(color: Color(0xff636363), fontSize: 13,fontWeight: FontWeight.w400),),
              ),
              Container(
                width: 25, height: 21, margin: EdgeInsets.only(left: 11, bottom: 1),
                child: Text('그림', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(isPicture? 0xff7E8FFF : 0xffD1D1D1), height: 1.4),),
              ),
              Container(
                width: 36, height: 22,
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      isPicture = !isPicture;
                    });
                  },
                  child: Container(
                      width: 31, height: 18, margin: EdgeInsets.only(left: 5, bottom: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(isPicture? 0xff8D9CFF : 0xffACACAC)
                      ),
                      child: Container(
                        width: 16, height: 16,
                        margin: EdgeInsets.all(1),
                        alignment: isPicture? Alignment.centerRight: Alignment.centerLeft,
                        child: Icon(CupertinoIcons.circle_fill, color: Color(isPicture? 0xffFFFFFF:0xffD9D9D9), size: 14,),
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, bottom: 1), height: 21,
                child: Text('사진', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(isPicture? 0xffD1D1D1 : 0xff676767),height: 1.4)),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 63, height: 113, margin: EdgeInsets.only(left: 19, top: 7, right: 10), alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffE3E3E3)
                ),
                //TODO: 카메라 모듈로 변경
                child: FlatButton(onPressed: widget.onToggled,
                child: Icon(CupertinoIcons.camera_fill)),
              ),
              Container(
                width: 298,
                height: 139, margin: EdgeInsets.only(top: 7),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: images
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
