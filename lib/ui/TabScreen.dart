import 'package:enpak_training_new/ui/PostsScreen.dart';
import 'package:enpak_training_new/utils/CustomTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/AppColors.dart';
import '../utils/Utils.dart';

class TabScreen extends StatelessWidget {
  final String title;

  TabScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: TabBar(
            labelColor: Utils().hexToColor(Appcolors.selected_tab_color),
            unselectedLabelColor: Utils().hexToColor(Appcolors.gray_bottom_bar_color),
            tabs: [
              CustomTab(text: 'Trending', icon: 'assets/images/ic_trending.png' , color: Appcolors.selected_tab_color,),
              CustomTab(text: 'Local', icon: 'assets/images/ic_local.png', color: Appcolors.selected_tab_color),
              CustomTab(text: 'World', icon: 'assets/images/ic_world.png', color: Appcolors.selected_tab_color),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Postsscreen()),
            Center(child: Postsscreen()),
            Center(child: Postsscreen()),
          ],
        ),
      ),
    );
  }
}