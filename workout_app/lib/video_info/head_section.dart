import 'package:flutter/material.dart';

import '../colors.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({
    Key? key,
  }) : super(key: key);

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
                onPressed: () {Navigator.pop(context);},
                alignment: Alignment.centerLeft,
                icon: Icon(Icons.arrow_back_ios_outlined,
                    size: 20, color: AppColor.secondPageIconColor),
              ),
              IconButton(
                onPressed: () {Navigator.pop(context);},
                icon: Icon(Icons.info_outline,
                    size: 20, color: AppColor.secondPageIconColor),
              ),
            ],
          ),
          Text(
            'Legs Toning\nand Glutes Workout',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: AppColor.secondPageTitleColor,
              height: 1.5,
            ),
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
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.timer,
                        size: 20,
                        color: AppColor.secondPageIconColor),
                    Text(
                      '60 min',
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColor.secondPageIconColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: 220,
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
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.handyman_outlined,
                        size: 20,
                        color: AppColor.secondPageIconColor),
                    Text(
                      'Resistant band, kettebell',
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColor.secondPageIconColor),
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