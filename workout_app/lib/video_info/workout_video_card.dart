import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../static_data.dart';

class WorkoutVideoCard extends StatelessWidget {
  const WorkoutVideoCard({
    Key? key,
    required this.workoutVideoInfo,
    required this.onTap,
  }) : super(key: key);

  final WorkoutVideoInfo workoutVideoInfo;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // color: Colors.redAccent.withOpacity(0.2),
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
      ),
    );
  }
}

class VideoCardSeparator extends StatelessWidget {
  const VideoCardSeparator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 5, horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 20,
            padding: const EdgeInsets.symmetric(
                horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFeaeefc),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('30s rest',
                  style: TextStyle(
                      color: Color(0xFF839fed))),
            ),
          ),
          const Expanded(
            child: DottedLine(),
          ),
        ],
      ),
    );
  }
}