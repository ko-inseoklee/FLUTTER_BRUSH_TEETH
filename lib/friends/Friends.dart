import 'package:brushing_teeth/component/MyAppBar.dart';
import 'package:flutter/cupertino.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyAppBar(title: "양치 메이트")
        ],
      ),
    );
  }
}
