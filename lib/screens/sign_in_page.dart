import 'package:flutter/material.dart';
import '../utils/screen_size_extension.dart';
import '../widgets/base_page.dart';
import '../components/inputs/custom_input.dart';
import '../components/inputs/password_input.dart';
import '../components/buttons/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();
  SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: context.heightPercent(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.widthPercent(25.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.heightPercent(53.0),
                      ),
                      const Text(
                        "HandInHand",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff2E2B26),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: context.heightPercent(40.0),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff2E2B26),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.heightPercent(18.0),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffF3EBE0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.widthPercent(25.0),
                      vertical: context.heightPercent(25.0),
                    ),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  color: Color(0xff2E2B26),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  height: 1.0,
                                ),
                              ),
                              Text(
                                "Sign In to your account",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(46, 43, 38, 0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: context.heightPercent(18.0),
                        ),
                        CustomInput(
                          titleIcon: 'assets/icons/user_icon.svg',
                          titleText: 'Email or Username',
                          hintText: "Enter your email or username",
                          controller: nameController,
                        ),
                        SizedBox(
                          height: context.heightPercent(5.0),
                        ),
                        PasswordInput(
                          controller: passwordContoller,
                          titleText: "Password",
                          titleIcon: "assets/icons/password_icon.svg",
                          hintText: "Enter your password",
                        ),
                        SizedBox(
                          height: context.heightPercent(62.0),
                        ),
                        CustomButton(
                          labelText: "Sign In",
                          onPress: () {
                            Navigator.pushNamed(context, '/MainNavgation');
                          },
                          width: double.infinity,
                          height: context.heightPercent(57.0),
                        ),
                        SizedBox(
                          height: context.heightPercent(7.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don’t have an account?",
                              style: TextStyle(
                                color: Color.fromRGBO(46, 43, 38, 0.5),
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              width: context.widthPercent(7.0),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/SignUp');
                              },
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Color(0xff85A09B),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: context.heightPercent(22.0),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.heightPercent(67.0),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.widthPercent(25.0),
                  ),
                  child: SizedBox(
                    height: context.heightPercent(57.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffC2E4DE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: const BorderSide(
                            width: 5.0,
                            color: Color(0xff85A09B),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Sign In with ",
                            style: TextStyle(
                              color: Color(0xff2E2B26),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: context.widthPercent(5.0),
                          ),
                          SvgPicture.asset("assets/icons/google_icon.svg"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
