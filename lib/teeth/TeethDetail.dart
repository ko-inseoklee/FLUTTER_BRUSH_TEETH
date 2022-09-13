import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeethDetail extends StatefulWidget {
  const TeethDetail({Key? key}) : super(key: key);

  @override
  _TeethDetailState createState() => _TeethDetailState();
}

class _TeethDetailState extends State<TeethDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(padding: EdgeInsets.zero, onPressed: () => Navigator.pop(context), child: Icon(CupertinoIcons.chevron_back),),
        title: Text("28번 치아", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, color: Color(0xffFF7E47)),),
      )
    );
  }
}
