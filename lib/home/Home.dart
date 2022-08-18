import 'package:brushing_teeth/friends/Friends.dart';
import 'package:brushing_teeth/report/Report.dart';
import 'package:brushing_teeth/teeth/Teeth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeTab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPageIndex = 0;

  void onChangePageIndex () {
    setState(() {
      _currentPageIndex;
    });
  }

  final List<Widget> _pages = [
    const HomeTab(), // see the HomeTab class below
    const Report(),
    const Teeth(),
    const Friends()// see the SettingsTab class below
  ];

  final List<String> imgRef = [
    "images/component/Home.png",
    "images/component/Report.png",
    "images/component/Teeth.png",
    "images/component/User.png"
  ];

  final List<String> bnbTitle = [
    "홈",
    "양치 리포트",
    "구강고민",
    "친구"
  ];

  Widget bnbItem (int myIndex) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          setState(() {
            _currentPageIndex = myIndex;
          });
        },
        child: Column(
          children: [
            Container(
              child: Image.asset(imgRef[myIndex],
                color: myIndex == _currentPageIndex? Color(0xff263FE9) : Color(0xffC2C2C2),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(bnbTitle[myIndex],
                style: TextStyle(
                  color: myIndex == _currentPageIndex? Color(0xff263FE9) : Color(0xff989898),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentPageIndex],
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(left: 18),
          height: 83,
          child: Row(
            children: [
              bnbItem(0),
              bnbItem(1),
              bnbItem(2),
              bnbItem(3)
            ],
          ),
        )
    );
  }
}
