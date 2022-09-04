import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  final String title;
  bool hasBackButton;
  VoidCallback? onClick;
  MyAppBar({Key? key,required this.title, this.hasBackButton = false, this.onClick, }) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 390,
      margin: EdgeInsets.only(top: 41),
      alignment: Alignment.center,
      child: widget.hasBackButton?
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 13),
              width: 16,
              height: 16,
              child: FlatButton(
                  onPressed: () => Navigator.pop(context),
                  padding: EdgeInsets.zero,
                  child: Icon(CupertinoIcons.left_chevron, size: 16,)),
            ),
            Container(
              width: 238,
              margin: EdgeInsets.only(left: 47),
              alignment: Alignment.center,
              child: Text(widget.title,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3F3F3F)
                ),
              ),
            ),
            SizedBox(
              width: 1,
            )
          ],
        )
          :
        Text(widget.title,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Color(0xff3F3F3F)
          ),
        ),
    );
  }
}
