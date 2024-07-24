import 'package:enpak_training_new/utils/AppColors.dart';
import 'package:enpak_training_new/utils/Utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Videocustomtab extends StatelessWidget {
  final String icon;
  final String text;
  final String color;

  Videocustomtab({required this.text , required this.icon , required this.color});

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Container( child : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 18),
            Image.asset(icon, width: 24, height: 24),
            SizedBox(width: 8), // Add some space between the icon and text
            Text(text , style: TextStyle(color: Utils().hexToColor(color))),
            SizedBox(width: 18),
          ],
        ),
          decoration: BoxDecoration (color: Utils().hexToColor(Appcolors.selected_tab_dark_gray) , borderRadius: BorderRadius.circular(18)),
        ),
    );
  }
}