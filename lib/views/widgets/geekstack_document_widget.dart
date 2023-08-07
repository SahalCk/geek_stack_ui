import 'package:flutter/material.dart';
import 'package:geekstack_ui_task/utils/colors.dart';
import 'package:geekstack_ui_task/utils/sized_boxes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GeekStackDucumentWidget extends StatelessWidget {
  final String fileImage;
  final String fileName;
  const GeekStackDucumentWidget(
      {super.key, required this.fileImage, required this.fileName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Adaptive.w(28),
      height: Adaptive.h(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(blurRadius: 10, color: Color.fromARGB(255, 228, 228, 228))
          ],
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: backgroundColor,
            child: Image.asset(fileImage, width: Adaptive.w(7)),
          ),
          sizedBoxHeight10,
          Text(
            fileName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          )
        ],
      ),
    );
  }
}
