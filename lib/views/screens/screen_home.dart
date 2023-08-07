import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geekstack_ui_task/utils/colors.dart';
import 'package:geekstack_ui_task/utils/sized_boxes.dart';
import 'package:geekstack_ui_task/view_models/home_screen_view_model.dart';
import 'package:geekstack_ui_task/views/widgets/geekstack_document_widget.dart';
import 'package:geekstack_ui_task/views/widgets/geekstack_group_widget.dart';
import 'package:geekstack_ui_task/views/widgets/geekstack_lecture_widget.dart';
import 'package:geekstack_ui_task/views/widgets/geekstack_textform_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    List<Widget> lectures = [
      const GeekStackLectureWidget(
          lecturebackgroundColor: Color.fromARGB(255, 143, 110, 249)),
      const GeekStackLectureWidget(
          lecturebackgroundColor: Color.fromARGB(255, 10, 53, 129)),
      const GeekStackLectureWidget(
          lecturebackgroundColor: Color.fromARGB(255, 182, 203, 239))
    ];

    List<Widget> documents = [
      const GeekStackDucumentWidget(
          fileImage: 'assets/documents/doc.png', fileName: 'Brief.docs'),
      const GeekStackDucumentWidget(
          fileImage: 'assets/documents/pdf.png', fileName: 'Summary.pdf'),
      const GeekStackDucumentWidget(
          fileImage: 'assets/documents/ppt.png', fileName: 'Dock.docs'),
      const GeekStackDucumentWidget(
          fileImage: 'assets/documents/excel.png', fileName: 'Report.xsl')
    ];

    List<Widget> groups = [
      const GeekStackGroupWidget(
          groupName: 'Biology group', newMessage: '12', count: '6'),
      const GeekStackGroupWidget(
          groupName: 'Maths lovers', newMessage: '3', count: '2')
    ];
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:
          SystemUiOverlayStyle.light.copyWith(statusBarColor: backgroundColor),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: Adaptive.w(5.5),
                      right: Adaptive.w(5.5),
                      top: Adaptive.w(5.5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Hi Mary',
                            style: TextStyle(
                                fontSize: 24,
                                color: fontColor,
                                fontFamily: 'PoppinsSemiBold'),
                          ),
                          Stack(
                            children: [
                              Image.asset(
                                'assets/bell.png',
                                width: Adaptive.w(7),
                              ),
                              Positioned(
                                top: Adaptive.h(0.25),
                                right: Adaptive.w(0.8),
                                child: const CircleAvatar(
                                  radius: 6.2,
                                  backgroundColor: backgroundColor,
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      sizedBoxHeight20,
                      GeekStackSearchTextFormField(
                          controller: searchController),
                      SizedBox(
                        height: Adaptive.h(3.5),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Video Lectures',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: fontColor),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: fontColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(1.8),
                ),
                SizedBox(
                  height: Adaptive.h(20.3),
                  width: Adaptive.w(100),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: Adaptive.h(0.3)),
                    child: CarouselSlider(
                        items: lectures,
                        options: CarouselOptions(
                            initialPage: 1,
                            viewportFraction: 0.76,
                            autoPlay: false,
                            enlargeCenterPage: true)),
                  ),
                ),
                SizedBox(height: Adaptive.h(2.8)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Adaptive.w(5.5)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Documents',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: fontColor),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: fontColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Adaptive.h(0.5)),
                SizedBox(
                  height: Adaptive.h(16),
                  child: ListView.separated(
                      padding: EdgeInsets.only(
                          top: Adaptive.h(1),
                          bottom: Adaptive.h(1),
                          left: Adaptive.w(5.5)),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return documents[index];
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: Adaptive.w(4.7),
                        );
                      },
                      itemCount: documents.length),
                ),
                sizedBoxHeight20,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Adaptive.w(5.5)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Groups',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: fontColor),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: fontColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Adaptive.h(0.5)),
                SizedBox(
                  height: Adaptive.h(16),
                  child: ListView.separated(
                      padding: EdgeInsets.only(
                          top: Adaptive.h(1),
                          bottom: Adaptive.h(1),
                          left: Adaptive.w(5.5)),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return groups[index];
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: Adaptive.w(4.7),
                        );
                      },
                      itemCount: groups.length),
                ),
                sizedBoxHeight20
              ],
            ),
          ),
        ),
        bottomNavigationBar: Consumer<HomeScreenViewModel>(
          builder: (context, value, child) {
            return Container(
              height: Adaptive.h(8.5),
              width: Adaptive.w(100),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        Provider.of<HomeScreenViewModel>(context, listen: false)
                            .changeSelectedIndex(0);
                      },
                      child: Icon(Icons.home,
                          size: 30,
                          color: value.selectedIndex == 0
                              ? const Color.fromARGB(255, 3, 198, 122)
                              : const Color.fromARGB(255, 185, 192, 210))),
                  InkWell(
                      onTap: () {
                        Provider.of<HomeScreenViewModel>(context, listen: false)
                            .changeSelectedIndex(1);
                      },
                      child: Icon(Icons.video_collection_rounded,
                          size: 30,
                          color: value.selectedIndex == 1
                              ? const Color.fromARGB(255, 3, 198, 122)
                              : const Color.fromARGB(255, 185, 192, 210))),
                  InkWell(
                      onTap: () {
                        Provider.of<HomeScreenViewModel>(context, listen: false)
                            .changeSelectedIndex(2);
                      },
                      child: Icon(Icons.assignment_rounded,
                          size: 30,
                          color: value.selectedIndex == 2
                              ? const Color.fromARGB(255, 3, 198, 122)
                              : const Color.fromARGB(255, 185, 192, 210))),
                  InkWell(
                      onTap: () {
                        Provider.of<HomeScreenViewModel>(context, listen: false)
                            .changeSelectedIndex(3);
                      },
                      child: Icon(Icons.book_rounded,
                          size: 30,
                          color: value.selectedIndex == 3
                              ? const Color.fromARGB(255, 3, 198, 122)
                              : const Color.fromARGB(255, 185, 192, 210))),
                  InkWell(
                      onTap: () {
                        Provider.of<HomeScreenViewModel>(context, listen: false)
                            .changeSelectedIndex(4);
                      },
                      child: Icon(Icons.settings,
                          size: 30,
                          color: value.selectedIndex == 4
                              ? const Color.fromARGB(255, 3, 198, 122)
                              : const Color.fromARGB(255, 185, 192, 210)))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
