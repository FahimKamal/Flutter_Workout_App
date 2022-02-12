import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_app/static_data.dart';

import '../colors.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({
    Key? key, required this.workoutPlan,
  }) : super(key: key);

  final WorkoutPlan workoutPlan;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      // color: Colors.redAccent.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                workoutPlan.description,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColor.secondPageTitleColor,
                  height: 1.5,
                ),
              ),
              Container(
                // height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3,
                        offset: const Offset(5, 5),
                        color: AppColor.gradientSecond.withOpacity(0.1)),
                    BoxShadow(
                        blurRadius: 3,
                        offset: const Offset(-5, -5),
                        color: AppColor.gradientSecond.withOpacity(0.1)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(workoutPlan.img, width: 100)
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              Container(
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        AppColor.secondPageContainerGradient1stColor,
                        AppColor.secondPageContainerGradient2ndColor,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.timer,
                        size: 20, color: AppColor.secondPageIconColor),
                    Text(
                      '60 min',
                      style: TextStyle(
                          fontSize: 14, color: AppColor.secondPageIconColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        AppColor.secondPageContainerGradient1stColor,
                        AppColor.secondPageContainerGradient2ndColor,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.handyman_outlined,
                        size: 20, color: AppColor.secondPageIconColor),
                    Text(
                      'Resistant band, kettebell',
                      style: TextStyle(
                          fontSize: 14, color: AppColor.secondPageIconColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
