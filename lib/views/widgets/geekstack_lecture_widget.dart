import 'package:flutter/material.dart';
import 'package:geekstack_ui_task/utils/sized_boxes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GeekStackLectureWidget extends StatelessWidget {
  final Color lecturebackgroundColor;
  const GeekStackLectureWidget(
      {super.key, required this.lecturebackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Adaptive.w(4), vertical: Adaptive.h(1.5)),
      height: Adaptive.h(20),
      width: Adaptive.w(74),
      decoration: BoxDecoration(
          color: lecturebackgroundColor,
          borderRadius: BorderRadius.circular(9),
          boxShadow: [
            BoxShadow(blurRadius: 2.0, color: lecturebackgroundColor),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('PHYSICS',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.28,
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 14.8)),
          SizedBox(
            height: Adaptive.h(1.65),
          ),
          Center(
            child: Image.asset(
              'assets/play.png',
              width: Adaptive.w(10),
            ),
          ),
          sizedBoxHeight30,
          const Text(
            'Scientific Notation and their ...',
            style: TextStyle(letterSpacing: 0.2, color: Colors.white),
          ),
          SizedBox(
            height: Adaptive.h(0.1),
          ),
          Row(
            children: [
              Image.asset(
                'assets/reminder.png',
                width: Adaptive.w(4.2),
              ),
              SizedBox(
                width: Adaptive.w(1),
              ),
              const Text('12:03',
                  style: TextStyle(letterSpacing: 0.3, color: Colors.white))
            ],
          ),
        ],
      ),
    );
  }
}
