import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  const MyAppBar({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      margin: EdgeInsets.only(top: 41),
      alignment: Alignment.topCenter,
      child: Text(title,
        style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            color: Color(0xff3F3F3F)
        ),
      ),
    );
  }
}
