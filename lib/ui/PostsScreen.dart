import 'package:enpak_training_new/utils/AppColors.dart';
import 'package:enpak_training_new/utils/Utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Postsscreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'username': 'API source',
      'userPhoto': 'assets/images/ic_user.png',
      'image': 'assets/images/post.png',
      'timeAgo': '16 MIM ago',
      'title': 'FBI searches US President Bidens beach home in Delaware: lawyer',
    },
    {
      'username': 'API source',
      'userPhoto': 'assets/images/ic_user.png',
      'image': 'assets/images/post.png',
      'timeAgo': '16 MIM ago',
      'title': 'FBI searches US President Biden beach home in Delaware: lawyer',
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return postItem(index);
      },
    );
  }

  Widget postItem(int index){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/user_pic.png'),
              ),
              SizedBox(width: 10),
              Text(
                items[index]['username']!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold , fontFamily: 'assets/fonts/plus_jakarta_sans_regular.ttf'),
              ),
            ],
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              'assets/images/post.png',
              width: double.infinity,
              height: 210,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                items[index]['timeAgo']!,
                style: TextStyle(fontSize: 16, color: Utils().hexToColor(Appcolors.gray_bottom_bar_color)),
              ),
              Row(
                children: [
                  Icon(Icons.favorite_border , color: Utils().hexToColor(Appcolors.dark_gray),),
                  SizedBox(width: 10),
                  Icon(Icons.share, color: Utils().hexToColor(Appcolors.dark_gray)),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            items[index]['title']!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold , fontFamily: 'assets/fonts/plus_jakarta_sans_regular.ttf'),
          ),
        ],
      ),
    );
  }

}