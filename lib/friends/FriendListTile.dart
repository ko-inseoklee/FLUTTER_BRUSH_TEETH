import 'package:brushing_teeth/friends/DummyUserData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendListTile extends StatelessWidget {
  final UserModel user;
  final int rank;
  const FriendListTile({Key? key,required this.user,required this.rank}) : super(key: key);

  Widget desc () {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: user.method.length,
        itemBuilder: (context, index){
      return Container(
        width: 50,
        height: 20,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 6, height: 6,
              child: Icon(CupertinoIcons.circle_fill, size: 6, color: rank <= 3? Color(0xffFFFFFF) : Color(0xff7C7C7E)),
            ),
            Container(
              width: 40,
              height: 20,
              margin: EdgeInsets.only(left: 3),
              child: Text(user.method[index], style: TextStyle(color: rank <= 3? Color(0xffFFFFFF) : Color(0xff7C7C7E), fontWeight: FontWeight.w400,fontSize: 12, height: 1.7),),
            )
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348,
      height: user == MyProfile? 57 : rank <=3 ? 65 : 55 ,
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: rank == 1? Color(0xff6377F9) :
                rank == 2? Color(0xff8F9EFF) :
                    rank == 3? Color (0xffA7B2FF)
                        : Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(40),
        border: user == MyProfile? Border.all(color: Color(0xff465BEA),width: 2.0) : Border()
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 34,
            margin: EdgeInsets.only(top: 16,left: 17), alignment: Alignment.topCenter,
            child: Text(rank.toString(), style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: rank <= 3? Color(0xffFFFFFF): Color(0xff7C7C7E),height: 1),),
          ),
          Container(
            width: 47,
            height: 47,
            margin: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffECECEC),
              border: Border.all(color:
                  rank == 1? Color(0xff8696FF) :
                      rank == 2? Color(0xff788AFF) :
                          rank == 3? Color(0xffBEC7FF) :
                              Color(0xffC0C8FC)
              )
            ),
            child: Image.asset(user.profileImage),
          ),
          Container(
            width: 133, height: 42,
            margin: EdgeInsets.only(top:rank <=3 ? 13 : 8,left: 13, bottom: rank <= 3? 10: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 82,
                  height: user == MyProfile? 18: 20,
                  child: Text(user.name, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,height: 1.2, color: user == MyProfile? Color(0xff465BEA) : rank <= 3? Color(0xffFFFFFF) : Color(0xff7C7C7E)),),
                ),
                Container(
                  width: 133,
                  height: 20,
                  margin: EdgeInsets.only(top: 2),
                  child: desc()
                ),
              ],
            ),
          ),
          Container(
            width: 51, height: user == MyProfile? 22 : 20,
            margin: EdgeInsets.only(left: 46, top: 18,bottom: 17),
            child: Text.rich(
              TextSpan(
                text: "${user.score}",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, height: 0.9, color: rank <=3? Color(0xffFFFFFF) : Color(0xff7C7C7E)),
                children: [
                  TextSpan(
                      text: "점",
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, height: 1.1),
                  )
                ]
              )
            )
          )
        ],
      ),
    );
  }
}


