import 'package:flutter/material.dart';

import '../../colors.dart';

class MotivationCard extends StatelessWidget {
  const MotivationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 180,
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: Stack(
        children: [

          // Background Image
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('assets/card.png'),
                  fit: BoxFit.fill),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(8, 10),
                    blurRadius: 40,
                    color: AppColor.gradientSecond.withOpacity(0.3)),
                BoxShadow(
                    offset: const Offset(-1, -5),
                    blurRadius: 10,
                    color: AppColor.gradientSecond.withOpacity(0.3))
              ],
            ),
          ),

          // Image of a girl running
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin:
            const EdgeInsets.only(right: 200, bottom: 50, left: 30),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/figure.png')),
            ),
          ),

          // Motivational Text
          Container(
            width: double.maxFinite,
            height: 100,
            margin: const EdgeInsets.only(left: 150, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You are doing great',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.homePageDetail,
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'Keep it up\n',
                    style: TextStyle(
                      color: AppColor.homePagePlanColor,
                      fontSize: 16,
                    ),
                    children: const [
                      TextSpan(
                        text: 'stick to your plan',
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}