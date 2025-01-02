import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/screen_size_extension.dart';

class CustomInput extends StatelessWidget {
  final String titleText;
  final String titleIcon;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final TextInputType keyboardType;

  const CustomInput({
    super.key,
    required this.hintText,
    required this.controller,
    required this.titleText,
    required this.titleIcon,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(titleIcon),
            SizedBox(width: context.widthPercent(5.0)),
            Text(
              titleText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        TextField(
          controller: controller,
          obscureText: obscureText,
          cursorColor: const Color.fromRGBO(46, 43, 38, 0.5),
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Color.fromRGBO(46, 43, 38, 0.5)),
            filled: true,
            fillColor: const Color.fromRGBO(255, 255, 255, 0.55),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.symmetric(
              horizontal: context.widthPercent(20.0),
            ),
          ),
        ),
      ],
    );
  }
}
