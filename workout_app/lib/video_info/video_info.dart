import 'package:flutter/material.dart';
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
                  borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Circuit 1: legs Toning',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColor.circuitsColor
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.loop, size: 30, color: AppColor.loopColor,),
                              const SizedBox(width: 5),
                              Text(
                                '3 sets',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.setsColor
                                ),
                              ),
                            ],
                          ),
                        ],
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


