import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:workout_app/colors.dart';
import 'package:workout_app/static_data.dart';

import 'head_section.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoPlaylist = StaticData.videoPlaylist;

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
            const HeadSection(),
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
                            'Circuit 1: legs Toning',
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
                              workoutVideoInfo: videoPlaylist[index]);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFeaeefc),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text('30s rest', style: TextStyle(color: Color(0xFF839fed))),
                                  ),
                                ),

                                const Expanded(
                                  child: DottedLine(),
                                ),
                              ],
                            ),
                          );
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
}

class WorkoutVideoCard extends StatelessWidget {
  const WorkoutVideoCard({
    Key? key,
    required this.workoutVideoInfo,
  }) : super(key: key);

  final WorkoutVideoInfo workoutVideoInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(workoutVideoInfo.thumbnail),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                workoutVideoInfo.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                workoutVideoInfo.time,
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
