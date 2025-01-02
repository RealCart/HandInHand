import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasePage extends StatelessWidget {
  final Widget child;

  const BasePage({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC2E4DE),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset('assets/images/background.svg'),
          ),
          child,
        ],
      ),
    );
  }
}
