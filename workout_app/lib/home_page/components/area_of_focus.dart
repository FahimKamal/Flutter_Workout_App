import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../static_data.dart';

class AreaOfFocus extends StatelessWidget {
  const AreaOfFocus({
    Key? key,
    required this.info,
  }) : super(key: key);

  final List info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Text(
                'Area of focus',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: AppColor.homePageTitle),
              ),
            ],
          ),
        ),
        GridView.builder(
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20
            ),
            itemCount: info.length,
            itemBuilder: (BuildContext context, int index) =>
                WorkoutCategoryCard(workoutPlan: info[index])),
      ],
    );
  }
}

class WorkoutCategoryCard extends StatelessWidget {
  const WorkoutCategoryCard({
    Key? key,
    required this.workoutPlan,
  }) : super(key: key);

  final WorkoutPlan workoutPlan;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Image.asset(workoutPlan.img, width: 100),
            const SizedBox(height: 10),
            Text(
              workoutPlan.title,
              style: TextStyle(
                fontSize: 20,
                color: AppColor.homePageDetail,
              ),
            ),
          ],
        ),
      ),
    );
  }
}