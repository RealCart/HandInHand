import 'package:flutter/material.dart';
import 'package:hand_in_hand/components/task_card.dart';
import '../../utils/screen_size_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3EBE0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.widthPercent(34.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: context.heightPercent(25.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      color: const Color(0xff85A09B),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30.0)),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                            height: context.heightPercent(34.0),
                            width: context.widthPercent(58.55),
                            child: const Center(
                              child: Text(
                                "all",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            )),
                      ),
                    ),
                    Material(
                      color: const Color.fromRGBO(224, 194, 170, 0.5),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30.0)),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                            height: context.heightPercent(34.0),
                            width: context.widthPercent(58.55),
                            child: const Center(
                              child: Text(
                                "easy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            )),
                      ),
                    ),
                    Material(
                      color: const Color.fromRGBO(206, 154, 141, 0.5),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30.0)),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                            height: context.heightPercent(34.0),
                            width: context.widthPercent(58.55),
                            child: const Center(
                              child: Text(
                                "pro",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            )),
                      ),
                    ),
                    Material(
                      color: const Color.fromRGBO(175, 107, 62, 0.5),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30.0)),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                            height: context.heightPercent(34.0),
                            width: context.widthPercent(58.55),
                            child: const Center(
                              child: Text(
                                "pro 2",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.heightPercent(51.0),
                ),
                TaskCard(card: [
                  TaskCardClassItem(
                    label: "Introduction to Sign Language",
                    mode: "Easy",
                  ),
                  TaskCardClassItem(
                    label: "Dactyl (A-Z)",
                    mode: "Easy",
                  ),
                  TaskCardClassItem(
                    label: "Greeting phrases",
                    mode: "Easy",
                  ),
                  TaskCardClassItem(
                    label: "Sign language grammar",
                    mode: "Medium",
                  ),
                  TaskCardClassItem(
                    label: "Family and people",
                    mode: "Medium",
                  ),
                  TaskCardClassItem(
                    label: "Professions",
                    mode: "Medium",
                  ),
                  TaskCardClassItem(
                    label: "Emotions, feelings and moods",
                    mode: "Medium",
                  ),
                  TaskCardClassItem(
                    label: "Home and Life",
                    mode: "Medium",
                  ),
                  TaskCardClassItem(
                    label: "Plants and animals",
                    mode: "Medium",
                  ),
                  TaskCardClassItem(
                    label: "Economy and money",
                    mode: "Hard",
                  ),
                  TaskCardClassItem(
                    label: "Technical vocabulary",
                    mode: "Hard",
                  ),
                  TaskCardClassItem(
                    label: "Society, culture",
                    mode: "Hard",
                  ),
                  TaskCardClassItem(
                    label: "Medical vocabulary",
                    mode: "Hard",
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
