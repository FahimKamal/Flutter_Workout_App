import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_app/colors.dart';
import 'package:workout_app/static_data.dart';
import 'package:workout_app/video_info/workout_video_card.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'head_section.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key, required this.workoutPlan,}) : super(key: key);

  final WorkoutPlan workoutPlan;

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoPlaylist = [];

  bool videoPlayerActive = false;

  YoutubePlayerController? _youtubeController;
  int videoIndex = 0;

  _playNext(){
    if(videoIndex < videoPlaylist.length - 1){
      setState(() {
        videoIndex++;
      });
      _youtubeController!
          .load(videoPlaylist[videoIndex].videoUrl);
    } else {
      setState(() {
        _youtubeController!.dispose();
        _youtubeController = null;
        videoPlayerActive = false;
        Get.snackbar('Congratulations!!!', 'All video has been played.');
      });
    }
  }
  _playPrevious(){
    if(videoIndex > 0){
      setState(() {
        videoIndex--;
      });
      _youtubeController!
          .load(videoPlaylist[videoIndex].videoUrl);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.workoutPlan.title == 'Legs'){
      videoPlaylist = StaticData.lagWorkoutPlaylist();
    } else if(widget.workoutPlan.title == 'Glues'){
      videoPlaylist = StaticData.gluesWorkoutPlaylist();
    } else if(widget.workoutPlan.title == 'Abs'){
      videoPlaylist = StaticData.absWorkoutPlaylist();
    } else if(widget.workoutPlan.title == 'Arms'){
      videoPlaylist = StaticData.armWorkoutPlaylist();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColor.gradientFirst.withOpacity(0.9),
            AppColor.gradientSecond,
          ], begin: const FractionalOffset(0.0, 0.4), end: Alignment.topRight),
        ),
        child: Column(
          children: [
            videoPlayerActive ? videoPlayerArea(context) : HeadSection(workoutPlan: widget.workoutPlan),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(80)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.workoutPlan.description,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColor.circuitsColor),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.loop,
                                size: 30,
                                color: AppColor.loopColor,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '3 sets',
                                style: TextStyle(
                                    fontSize: 15, color: AppColor.setsColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        itemCount: videoPlaylist.length,
                        itemBuilder: (BuildContext context, int index) {
                          return WorkoutVideoCard(
                            workoutVideoInfo: videoPlaylist[index],
                            onTap: () {
                              debugPrint(
                                  'Pressed Button index: ' + index.toString());
                              setState(() {
                                if(!videoPlayerActive){
                                  _youtubeController = YoutubePlayerController(
                                    initialVideoId: videoPlaylist[index].videoUrl,
                                    flags: const YoutubePlayerFlags(
                                      autoPlay: true,
                                    ),
                                  );
                                  videoPlayerActive = true;
                                } else {
                                  _youtubeController!
                                      .load(videoPlaylist[index].videoUrl);
                                }
                                videoIndex = index;
                              });
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const VideoCardSeparator();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container videoPlayerArea(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 300,
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          // Top navigation
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  alignment: Alignment.centerLeft,
                  icon: Icon(Icons.arrow_back_ios_outlined,
                      size: 20, color: AppColor.secondPageIconColor),
                ),
                IconButton(
                  onPressed: () {
                    Get.snackbar(
                      'Pop up',
                      'Function not implemented yet.',
                      duration: const Duration(milliseconds: 1000),
                    );
                  },
                  icon: Icon(Icons.info_outline,
                      size: 20, color: AppColor.secondPageIconColor),
                ),
              ],
            ),
          ),
          YoutubePlayer(
            width: MediaQuery.of(context).size.width,
            controller: _youtubeController!,
            showVideoProgressIndicator: true,
            onEnded: (data) {
              _playNext();
            },
            onReady: () {
              setState(() {
                // buttonEnabled = true;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    _playPrevious();
                  },
                  alignment: Alignment.centerLeft,
                  icon: Icon(Icons.skip_previous,
                      size: 50, color: AppColor.secondPageIconColor),
                ),
                IconButton(
                  onPressed: () {
                    _playNext();
                  },
                  icon: Icon(Icons.skip_next,
                      size: 50, color: AppColor.secondPageIconColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
