import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DummyUserData.dart';
import 'FriendAvatar.dart';
import 'FriendListTile.dart';

class FriendList extends StatefulWidget {
  const FriendList({Key? key}) : super(key: key);

  @override
  _FriendListState createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  List<UserModel> friends = DummyUserData.where((element) => element.isFriend).toList();
  List<UserModel> notFriends = DummyUserData.where((element) => !element.isFriend).toList();
  void initState() {
    // TODO: implement initState
    super.initState();

    friends.sort((a,b) => b.score.compareTo(a.score));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 238,
          height: 34,
          margin: EdgeInsets.only(top: 16, left: 23.5),
          child: Text('친구와 같이 양치해 보세요',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17.0,
                height: 1.2
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 1  ),
          height: 89,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: friends.length,
            itemBuilder: (BuildContext context, int index) {
              return FriendAvatarCard(user: friends[index],);
            },

          ),
        ),
        Container(
          child: Divider(color: Color(0xffEEEEEE),thickness: 1,),
        ),
        Container(
          width: 344,
          height: 38,
          margin: EdgeInsets.only(left: 23.5,right: 22.5, top: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 238,
                height: 38,
                child: Text("${friends.length}명 중 ${friends.indexOf(MyProfile) + 1}위에요\n좀 더 분발하셔야 겠어요",
                  style: TextStyle(
                    color: Color(0xff5C5C5C),
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0,
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 18,
                margin: EdgeInsets.only(left: 1),
                decoration: BoxDecoration(
                    color: Color(0xff646464),
                    borderRadius: BorderRadius.circular(15)
                ),
                alignment: Alignment.center,
                child: Text('일', style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    height: 1.4
                ),),
              ),
              Container(
                width: 50,
                height: 18,
                margin: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: Color(0xffDCDCDC),
                    borderRadius: BorderRadius.circular(15)
                ),
                alignment: Alignment.center,
                child: Text('월', style: TextStyle(
                    color: Color(0xffA2A2A2),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    height: 1.4
                ),),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 16, left: 19),
          width: 348,
          height: 400,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: friends.length,
              itemBuilder: (context,index) {
                return FriendListTile(user: friends[index], rank: index+1,);
              }),
        ),
      ],
    );
  }
}
