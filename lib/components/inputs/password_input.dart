import 'package:flutter/material.dart';
import '../../utils/screen_size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordInput extends StatefulWidget {
  final String titleText;
  final String titleIcon;
  final String hintText;
  final TextEditingController controller;

  const PasswordInput({
    super.key,
    required this.controller,
    required this.titleText,
    required this.titleIcon,
    required this.hintText,
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(widget.titleIcon),
            const SizedBox(width: 5.0),
            Text(
              widget.titleText,
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
          controller: widget.controller,
          obscureText: _obscureText,
          cursorColor: const Color.fromRGBO(46, 43, 38, 0.5),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Color.fromRGBO(46, 43, 38, 0.5),
              letterSpacing: 1.0,
              fontWeight: FontWeight.normal,
            ),
            labelStyle: const TextStyle(
              color: Color.fromRGBO(46, 43, 38, 0.5),
            ),
            filled: true,
            fillColor: const Color.fromRGBO(255, 255, 255, 0.55),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: _togglePasswordVisibility,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: context.widthPercent(20.0)),
          ),
          style: _obscureText
              ? (const TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10,
                ))
              : (const TextStyle()),
        ),
      ],
    );
  }
}
