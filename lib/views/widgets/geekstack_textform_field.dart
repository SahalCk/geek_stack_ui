import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GeekStackTextFormField extends StatelessWidget {
  final TextEditingController controller;

  const GeekStackTextFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: Adaptive.h(2)),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: Adaptive.w(2), right: Adaptive.w(1)),
            child: SizedBox(
                width: Adaptive.w(0.1),
                height: Adaptive.h(0.1),
                child: Image.asset('assets/search.png')),
          ),
          prefixIconColor: Colors.grey,
          hintText: 'Search for lectures,document or a group',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
          filled: true,
          fillColor: Colors.white,
          hintStyle: const TextStyle(
              color: Color.fromARGB(255, 196, 196, 196),
              fontSize: 13,
              fontFamily: 'NatoSansBold')),
      style: const TextStyle(color: Colors.white),
    );
  }
}

class GeekStackSearchTextFormField extends StatelessWidget {
  final TextEditingController controller;
  const GeekStackSearchTextFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Adaptive.w(4.5)),
      height: Adaptive.h(6),
      width: Adaptive.w(100),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(
                blurRadius: 25.0, color: Color.fromARGB(255, 223, 223, 223)),
          ]),
      child: Row(
        children: [
          SizedBox(
              child: Image.asset(
            'assets/search.png',
            width: Adaptive.w(4.2),
          )),
          SizedBox(width: Adaptive.w(3)),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search for lectures,document or a group',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 13.5,
                      fontFamily: 'NatoSansBold')),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.5,
                  fontFamily: 'NatoSansBold'),
            ),
          )
        ],
      ),
    );
  }
}
