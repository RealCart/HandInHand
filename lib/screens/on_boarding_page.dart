import 'package:flutter/material.dart';
import 'package:hand_in_hand/components/buttons/custom_button.dart';
import 'sign_in_page.dart';
import '../utils/screen_size_extension.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _currIndex = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      'image': 'assets/images/3D_hand.png',
      'title': '3D avatars showing gestures',
    },
    {
      'image': 'assets/images/test_example.png',
      'title': 'Tests and tasks for consolidation knowledge',
    },
    {
      'image': 'assets/images/assisting_example.png',
      'title': 'AI, assisting in practising gestures',
    },
  ];

  void _onContinue() {
    setState(() {
      if (_currIndex < _onboardingData.length - 1) {
        _currIndex++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignInPage()),
        );
      }
    });
  }

  Future<bool> _onWillPop() async {
    if (_currIndex > 0) {
      setState(() {
        _currIndex--;
      });
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: const Color(0xffC1E4DE),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: context.heightPercent(351.0),
                decoration: const BoxDecoration(
                  color: Color(0xffF3EBE0),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60.0),
                    bottomRight: Radius.circular(60.0),
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(_onboardingData[_currIndex]["image"]!),
              ),
              SizedBox(
                height: context.heightPercent(104.0),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.widthPercent(38.0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        _onboardingData[_currIndex]['title']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Color(0xff2E2B26),
                        ),
                      ),
                      SizedBox(
                        height: context.heightPercent(90.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _onboardingData.length,
                          (index) {
                            return Container(
                              width: index == _currIndex ? 18 : 13,
                              height: index == _currIndex ? 18 : 13,
                              margin: EdgeInsets.symmetric(
                                horizontal: context.widthPercent(10.0),
                              ),
                              decoration: BoxDecoration(
                                color: index == _currIndex
                                    ? const Color(0xFF85A09B)
                                    : const Color(0xFF85A09B).withOpacity(0.5),
                                shape: BoxShape.circle,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: context.heightPercent(31.0),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: context.heightPercent(57.0),
                        child: CustomButton(
                          labelText: "Continue",
                          onPress: _onContinue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
