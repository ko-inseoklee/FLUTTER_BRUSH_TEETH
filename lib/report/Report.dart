import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  bool isGraph = true;

  Widget GraphTab () {
    return Container(
        margin: EdgeInsets.only(top: 19),
        height: 614,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 453,
              child: Image.asset('images/reports/graph.png'),
            ),
            Container(
              width: 354,
              height: 307,
              margin: EdgeInsets.only(left: 16,top: 5,right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffE1E5FF)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 151,
                    height: 29,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 22,top: 18),
                    child: Text("오늘의 양치",
                      style: TextStyle(
                        color: Color(0xff3A54FF),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0
                      ),
                    ),
                  ),
                  Container(
                    width: 302,
                    height: 82,
                    margin: EdgeInsets.only(top: 9,left: 22),
                    child: RichText
                      (text:
                      TextSpan(
                          text: "전체 사용자 중\n",
                        style: TextStyle(
                          color: Color(0xff4E4E4E),
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0
                        ),
                        children: [
                          TextSpan(
                            text: "하위 30%",
                            style: TextStyle(
                                color: Color(0xff263FE9),
                                fontWeight: FontWeight.w800,
                                fontSize: 24.0,
                              height: 1.5
                            ),
                          ),
                          TextSpan(
                              text: " 수준이에요.",
                            style: TextStyle(
                                color: Color(0xff4E4E4E),
                                fontWeight: FontWeight.w400,
                                fontSize: 24.0
                            ),
                          )
                        ]
                      ),
                    ),
                  ),
                  Container(
                    width: 302,
                    height: 13,
                    margin: EdgeInsets.only(left: 23),
                    decoration: BoxDecoration(
                      color: Color(0xffACB7FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 104,
                          height: 13,
                          decoration: BoxDecoration(
                            color: Color(0xff3A54FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                  Container()
                ],
              ),
            )
          ],
        )
    );
  }

  Widget ReportTab () {
    return Container(
        margin: EdgeInsets.only(top: 19),
        height: 614,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Text('good')
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyAppBar(title: "양치 리포트"),
          Container(
            height: 30,
            width: 350,
            margin: EdgeInsets.only(top: 23),
            decoration: BoxDecoration(
                color: Color(0xffE9E9E9),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      isGraph = !isGraph;
                    });
                  },
                  child: Container(
                    height: 26,
                    width: 173,
                    margin: EdgeInsets.only(left: 2),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isGraph? Color(0xffFFFFFF) : Color(0xffE9E9E9),
                    ),
                    child: Text('그래프',
                      style: TextStyle(
                        color: isGraph? Color(0xff263FE9) : Color(0xffB9B9B9)
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      isGraph = !isGraph;
                    });
                  },
                  child: Container(
                    height: 26,
                    width: 173,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: !isGraph? Color(0xffFFFFFF) : Color(0xffE9E9E9),
                    ),
                    child: Text('캘린더',
                      style: TextStyle(
                          color: !isGraph? Color(0xff263FE9) : Color(0xffB9B9B9)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          isGraph? GraphTab() : ReportTab()
        ],
      ),
    );
  }
}
