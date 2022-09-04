import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:brushing_teeth/friends/FriendAvatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DummyUserData.dart';

class SearchFriends extends StatefulWidget {
  SearchFriends({Key? key}) : super(key: key);

  @override
  State<SearchFriends> createState() => _SearchFriendsState();
}

class _SearchFriendsState extends State<SearchFriends> {
  String searchText = "";
  late UserModel selectedFriend;
  bool isSearchPressed = false;
  FocusNode _focusNode = new FocusNode();
  late TextEditingController _textEditingController;
  List<UserModel> notFriends = DummyUserData.where((element) => !element.isFriend).toList();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = new TextEditingController(text: searchText);
  }

  void addFriends(){
    setState(() {
      selectedFriend.isAdding = true;
    });
  }

  Widget AddFriendDialog() {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(26))),
      content: Container(
        width: 237, height: 250,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(26)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 129,
              height: 45,
              margin: EdgeInsets.only(top: 45),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: selectedFriend.name+"님",
                  style: TextStyle(
                    color: Color(0xff4860FF),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: "에게\n",
                      style: TextStyle(
                        color: Color(0xff515151),
                        fontWeight: FontWeight.w400
                      )
                    ),
                    TextSpan(
                      text: "친구신청을 보낼게요",
                      style: TextStyle(
                        color: Color(0xff515151),
                        fontWeight: FontWeight.w400
                      )
                    )
                  ]
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 35,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset('images/home/brush.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 80, top: 27),
                    child: Image.asset('images/home/brushBar.png'),
                  ),
                ],
              ),
            ),
            Container(
              width: 168, height: 32,
              margin: EdgeInsets.only(top: 36),
              child: Row(
                children: [
                  Container(
                    width: 75, height: 32,
                    decoration: BoxDecoration(
                      color: Color(0xffC2C2C2),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      child: Text("취소", style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                      ),),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    width: 75, height: 32,
                    decoration: BoxDecoration(
                        color: Color(0xff7385FF),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    margin: EdgeInsets.only(left: 18),
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      child: Text("확인", style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 15
                      ),),
                      onPressed: () {
                        addFriends();
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }

  Widget NotFriendTile(UserModel userModel) {
    return Container(
      margin: EdgeInsets.only(left: 22,bottom: 31),
      height: 47,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xffECECEC),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Color(0xffC0C8FC),width: 2)
            ),
            height: 47, width: 47,
            child: Image.asset(userModel.profileImage),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 3,left: 13),
                  child: Text(userModel.name, style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.2
                  ),),
                ),
                Container(
                  width: 135,
                  margin: EdgeInsets.only(top: 2,left: 13),
                  child: Text(userModel.description, style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: Color(0xff7C7C7E)
                  ),),
                )
              ],
            ),
          ),
          userModel.isAdding?
          Container(
            width: 56, height: 47,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(left: 83),
            child: Text("신청중", style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: Color(0xffB7B7B7)
            ),),)
              :
          Container(
            width: 56, height: 47,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(left: 83),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                selectedFriend = userModel;
                showDialog(context: context, barrierDismissible: false, builder: (context){
                  return AddFriendDialog();
                });
              },
              child: Text("친구신청", style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  color: Color(0xff263FE9)
              ),),
            ),
          )
          ,
        ],
      ),
    );
  }

  Widget DefaultNotFriends(List<UserModel> users){
    return Column(
      children: [
        NotFriendTile(users[0]),
        NotFriendTile(users[1])
      ],
    );
  }

  Widget SearchedFriendList(){
    List<UserModel> searchedList = notFriends.where((element) => element.name.contains(searchText)).toList();

    return Container(
      height: 600,
      child: ListView.builder(itemCount: searchedList.length ,itemBuilder: (context, index){
        return NotFriendTile(searchedList[index]);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyAppBar(title: "양치 메이트", hasBackButton: true),
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
                    child: CupertinoTextField(
                      autofocus: true,
                      focusNode: _focusNode,
                      controller: _textEditingController,
                      onSubmitted: (value)
                      {
                        setState(() {
                          isSearchPressed = true;
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          searchText = value;
                        });
                      },
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                      ),
                      placeholder: "검색하기",
                      placeholderStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0,
                          height: 1.5,
                          color: Color(0xffA3A3A3)
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
            Container(
              width: 238,
              height: 34,
              margin: EdgeInsets.only(left:22,top: 16, bottom: 11),
              alignment: Alignment.centerLeft,
              child: Text('추천친구',
                  style:TextStyle(
                    color: Color(0xff5C5C5C),
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  )),
            ),
            Container(
              child: isSearchPressed? SearchedFriendList() : DefaultNotFriends(notFriends),
            ),
            // DefaultNotFriends(notFriends)
          ],
        )
      ),
    );
  }
}
