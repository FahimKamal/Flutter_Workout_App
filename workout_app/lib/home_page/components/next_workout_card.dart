import 'package:flutter/material.dart';

import '../../colors.dart';

class NextWorkoutCard extends StatelessWidget {
  const NextWorkoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 30),
        width: MediaQuery.of(context).size.width,
        height: 220,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColor.gradientFirst.withOpacity(0.8),
              AppColor.gradientSecond.withOpacity(0.9),
            ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(80),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(5, 10),
                blurRadius: 10,
                color: AppColor.gradientSecond.withOpacity(0.3),
              ),
            ]),
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Next workout',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColor.homePageContainerTextSmall),
              ),
              const SizedBox(height: 5),
              Text(
                'Legs Toning\nand Glutes Workout',
                style: TextStyle(
                  fontSize: 25,
                  color: AppColor.homePageContainerTextSmall,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.timer,
                          size: 20,
                          color: AppColor.homePageContainerTextSmall),
                      const SizedBox(width: 10),
                      Text(
                        '60 min',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColor.homePageContainerTextSmall),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(4, 8),
                            blurRadius: 15,
                            color: AppColor.gradientFirst,

                          )
                        ]
                    ),
                    child: const Icon(Icons.play_circle_fill,
                        size: 60, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}