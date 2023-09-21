import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? btnColor;
  final TextStyle? btnStyle;
  final VoidCallback? callBack;

  MyButton(
      {required this.btnName,
      this.icon,
      this.btnColor = Colors.green,
      this.btnStyle,
      this.callBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      child: ElevatedButton(
        onPressed: () {
          callBack!();
        },
        child: icon != null
            ? Row(
                children: [icon!, Text(btnName)],
              )
            : Text(btnName),
        style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
            shadowColor: Colors.red[100],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21)))),
      ),
    );
  }
}
