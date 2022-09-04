import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:brushing_teeth/friends/DummyUserData.dart';
import 'package:brushing_teeth/friends/FrientList.dart';
import 'package:brushing_teeth/friends/SearchFriends.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {

  List<UserModel> notFriends = DummyUserData.where((element) => !element.isFriend).toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                  alignment: Alignment.centerLeft,
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.push(context, PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => SearchFriends(),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      ),);
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '검색하기',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                            height: 1.5,
                            color: Color(0xffA3A3A3)
                        ),
                      ),
                    ),
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
          FriendList()
        ],
      ),
    );
  }


}
