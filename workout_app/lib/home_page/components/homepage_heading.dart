import 'package:flutter/material.dart';

import '../../colors.dart';

class HomepageHeading extends StatelessWidget {
  const HomepageHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Training',
                style: TextStyle(
                  fontSize: 30,
                  color: AppColor.homePageTitle,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(child: Container()),
              Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: AppColor.homePageIcons,
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.calendar_today_outlined,
                size: 20,
                color: AppColor.homePageIcons,
              ),

              const SizedBox(width: 15),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: AppColor.homePageIcons,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Text(
                'Your program',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.homePageSubtitle,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(child: Container()),
              Text(
                'Details',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.homePageDetail,
                ),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.arrow_forward,
                size: 20,
                color: AppColor.homePageIcons,
              )
            ],
          ),
        ],
      ),
    );
  }
}