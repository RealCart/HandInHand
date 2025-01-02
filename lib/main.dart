import 'package:flutter/material.dart';
import 'screens/on_boarding_page.dart';
import 'screens/sign_in_page.dart';
import 'screens/sign_up_page.dart';
import './navigation/main_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      routes: {
        '/OnBoardingPage': (context) => const OnBoardingPage(),
        '/SignIn': (context) => SignInPage(),
        '/SignUp': (context) => SignUpPage(),
        '/MainNavgation': (context) => const MainNavigation(),
      },
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMain();
  }

  void _navigateToMain() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/OnBoardingPage');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC1E4DE),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/SplashScreen.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Center(
            child: Text(
              "HandInHand",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xff2E2B26),
              ),
            ),
          )
        ],
      ),
    );
  }
}
