import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:geekstack_ui_task/utils/sized_boxes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GeekStackGroupWidget extends StatelessWidget {
  final String groupName;
  final String newMessage;
  final String count;
  const GeekStackGroupWidget(
      {super.key,
      required this.groupName,
      required this.newMessage,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Adaptive.w(3.8)),
      width: Adaptive.w(47),
      height: Adaptive.h(12),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(blurRadius: 10, color: Color.fromARGB(255, 228, 228, 228))
          ],
          borderRadius: BorderRadius.circular(11)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                groupName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              CircleAvatar(
                radius: 11,
                backgroundColor: const Color.fromARGB(255, 3, 198, 122),
                child: Text(
                  count,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
              )
            ],
          ),
          Text('$newMessage new messages',
              style: const TextStyle(color: Colors.grey, fontSize: 12)),
          sizedBoxHeight10,
          SizedBox(
            height: Adaptive.h(4.8),
            child: FlutterImageStack(
                imageSource: ImageSource.network,
                imageList: const [
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/800px-Pierre-Person.jpg',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Photo_portrait_PP.jpg/640px-Photo_portrait_PP.jpg',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/John_Krasinski_and_Josh_Wood_%28cropped%29.jpg/333px-John_Krasinski_and_Josh_Wood_%28cropped%29.jpg',
                ],
                showTotalCount: false,
                totalCount: 3),
          )
        ],
      ),
    );
  }
}
