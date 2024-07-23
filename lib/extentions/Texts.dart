
import 'package:enpak_training_new/utils/Utils.dart';
import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final String fontFamily;
  final VoidCallback onClick;


  CustomText({
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontFamily,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onClick, child:
      Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: fontFamily,
      ),
    )
    );
  }
}
class RoundButtonText extends StatelessWidget {
  final String text;
  final String color;
  final String backgroundColor;
  final double fontSize;
  final String fontFamily;
  final VoidCallback onClick;

  RoundButtonText({
    required this.text,
    required this.color,
    required this.backgroundColor,
    required this.fontSize,
    required this.fontFamily,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
        child : Padding (padding: EdgeInsets.only(top: 10, left: 16 , right: 16) ,
      child: Container(
        height: 52,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Utils().hexToColor(backgroundColor),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(child:  Text(
          text,
          style: TextStyle(
            color: Utils().hexToColor(color),
            fontSize: fontSize,
            fontFamily: fontFamily,
          ),
        ),
        )
          ),
        )
    );
  }
}
