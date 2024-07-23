import 'package:enpak_training_new/utils/AppColors.dart';
import 'package:enpak_training_new/utils/CustomTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  final String title;

  VideoScreen({required this.title});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/my_video.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 40 , right: 15 , left: 15),
                  child: Container(color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTab(text: 'Feed', icon: 'assets/images/ic_feed.png',color: Appcolors.grayhint,),
                    CustomTab(text: 'Video', icon: 'assets/images/ic_video.png',color: Appcolors.grayhint),
                    CustomTab(text: 'Podcast', icon: 'assets/images/ic_podcast.png',color: Appcolors.grayhint)
                  ],
                ),
              )
              ),
              Expanded(
                child: Center(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                      : CircularProgressIndicator(),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user_pic.png'),
                    ),
                    SizedBox(width: 10),
                    Text('Username', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Video Description',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Column(
              children: [
                Icon(Icons.favorite, color: Colors.white),
                SizedBox(height: 10),
                Icon(Icons.message, color: Colors.white),
                SizedBox(height: 10),
                Icon(Icons.share, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}