import 'dart:math';
import 'package:flutter/material.dart';

import 'DummyUserData.dart';

class DottedBorder extends CustomPainter {
  //number of stories
  final int numberOfStories;
  final int score;
  final bool isNotFriend;
  //length of the space arc (empty one)
  final int spaceLength;
  //start of the arc painting in degree(0-360)
  double startOfArcInDegree = 270;

  DottedBorder({required this.score, required this.numberOfStories, this.spaceLength = 10,required this.isNotFriend});

  //drawArc deals with rads, easier for me to use degrees
  //so this takes a degree and change it to rad
  double inRads(double degree){
    return (degree * pi)/180;
  }

  @override
  bool shouldRepaint(DottedBorder oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {

    //circle angle is 360, remove all space arcs between the main story arc (the number of spaces(stories) times the  space length
    //then subtract the number from 360 to get ALL arcs length
    //then divide the ALL arcs length by number of Arc (number of stories) to get the exact length of one arc
    double arcLength = (360 - (numberOfStories * spaceLength))/numberOfStories;


    //be careful here when arc is a negative number
    //that happens when the number of spaces is more than 360
    //feel free to use what logic you want to take care of that
    //note that numberOfStories should be limited too here
    if(arcLength<=0){
      arcLength = 360/spaceLength -1;
    }


    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

    //looping for number of stories to draw every story arc
    for(int i =0;i<numberOfStories;i++){
      //printing the arc
      canvas.drawArc(
          rect,
          inRads(startOfArcInDegree),
          //be careful here is:  "double sweepAngle", not "end"
          inRads(arcLength),
          false,
          Paint()
          //here you can compare your SEEN story index with the arc index to make it grey
            ..color = isNotFriend? Color(0xffC0C8FC)
                : i <= score? Color(0xff263FE9)
                : Color(0xffC0C8FC)
            ..strokeWidth =2.0
            ..style = PaintingStyle.stroke

      );

      //the logic of spaces between the arcs is to start the next arc after jumping the length of space
      startOfArcInDegree += arcLength + spaceLength;
    }
  }
}



class FriendAvatarCard extends StatelessWidget {
  final UserModel user;
  final bool isNotFriend;
  const FriendAvatarCard({Key? key,required this.user, this.isNotFriend = false}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2, right: 16, top: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 53, height: 53,
                child: CustomPaint(
                  painter: DottedBorder(numberOfStories: 100, spaceLength: 0, score: user.score, isNotFriend: this.isNotFriend),
                ),),
              Container(
                width: 51,
                height: 51,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffECECEC), shape: BoxShape.circle),
                child: user.profileImage == ""? Container() : Image.asset(user.profileImage)
              )
            ],
          ),
          Container(
            height: 20,
            width: 52,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 5),
            child: Text( isNotFriend? "" : user.name,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: Color(0xffAFAFAF)
              )
              ,),
          )
        ],
      ),
    );
  }
}