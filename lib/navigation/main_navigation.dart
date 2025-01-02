import 'package:flutter/material.dart';
import '../screens/Main page/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const Center(child: Text('Сообщения')),
    const Center(child: Text('Сообщения')),
    const Center(child: Text('Профиль')),
  ];

  Future<bool> onWillPop() async {
    if (currentIndex > 0) {
      setState(() {
        currentIndex = 0;
      });
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        backgroundColor: const Color(0xffF6F6F6),
        body: IndexedStack(
          index: currentIndex,
          children: _screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              backgroundColor: const Color(0xffE9D6C5),
              label: "",
              icon: SvgPicture.asset("assets/icons/home_icon.svg"),
            ),
            BottomNavigationBarItem(
              backgroundColor: const Color(0xffE9D6C5),
              label: "",
              icon: SvgPicture.asset("assets/icons/book_icon.svg"),
            ),
            BottomNavigationBarItem(
              backgroundColor: const Color(0xffE9D6C5),
              label: "",
              icon: SvgPicture.asset("assets/icons/shope_icon.svg"),
            ),
            BottomNavigationBarItem(
              backgroundColor: const Color(0xffE9D6C5),
              label: "",
              icon: SvgPicture.asset("assets/icons/profile_icon.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
