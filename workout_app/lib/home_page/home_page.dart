import 'package:flutter/material.dart';
import 'package:workout_app/colors.dart';
import 'package:workout_app/static_data.dart';

import 'components/area_of_focus.dart';
import 'components/homepage_heading.dart';
import 'components/motivation_card.dart';
import 'components/next_workout_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = StaticData.workoutPlans;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomepageHeading(),
              const SizedBox(height: 20),
              const NextWorkoutCard(),
              const SizedBox(height: 5),
              const MotivationCard(),
              AreaOfFocus(info: info),
            ],
          ),
        ),
      ),
    );
  }
}


