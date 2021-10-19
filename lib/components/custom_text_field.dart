import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final bool obsecureText;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  CustomTextField({
    Key? key,
    required this.title,
    required this.hint,
    this.controller,
    this.obsecureText = false,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'inter',
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: AppColorTheme.primaryExtraSoft,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: controller,
              obscureText: obsecureText,
              cursorColor: AppColorTheme.kPrimary,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 8, right: 8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
