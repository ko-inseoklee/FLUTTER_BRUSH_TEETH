import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:brushing_teeth/friends/DummyUserData.dart';
import 'package:brushing_teeth/friends/FriendAvatar.dart';
import 'package:brushing_teeth/friends/FriendListTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  String searchText = "";
  late TextEditingController _textEditingController;
  List<UserModel> friends = DummyUserData.where((element) => element.isFriend).toList();
  List<UserModel> notFriends = DummyUserData.where((element) => !element.isFriend).toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = new TextEditingController(text: searchText);

    friends.sort((a,b) => b.score.compareTo(a.score));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyAppBar(title: "양치 메이트"),
          Container(
            width: 350,
            height: 39,
            margin: EdgeInsets.only(top:9, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Color(0xffF2F2F2),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Container(
                  width: 238,
                  height: 39,
                  margin: EdgeInsets.only(left: 20,right: 57),
                  child: CupertinoSearchTextField(
                    controller: _textEditingController,
                    onChanged: (value) {
                      setState(() {
                        searchText = value;
                      });
                    },
                    placeholder: "검색하기",
                    placeholderStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0,
                      height: 1.5,
                      color: Color(0xffA3A3A3)
                    ),
                    itemSize: 0,
                    backgroundColor: Color(0xffF2F2F2),
                  ),
                ),
                Container(
                  width: 15.8,
                  height: 15.8,
                  margin: EdgeInsets.only(top: 11.6,right: 11.0,bottom: 11.6),
                  child: Icon(CupertinoIcons.search, size: 15.8,),
                ),
              ],
            ),
          ),
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
      ),
    );
  }


}
