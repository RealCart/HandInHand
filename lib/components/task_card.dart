import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/screen_size_extension.dart';

class TaskCard extends StatelessWidget {
  final List<TaskCardClassItem> card;

  const TaskCard({
    super.key,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: card.asMap().entries.map((entry) {
        int index = entry.key;
        TaskCardClassItem cardItem = entry.value;

        return TaskCardItem(
          label: cardItem.label,
          num: index + 1,
          mode: cardItem.mode,
        );
      }).toList(),
    );
  }
}

class TaskCardItem extends StatelessWidget {
  final String label;
  final int num;
  final String mode;

  TaskCardItem({
    super.key,
    required this.label,
    required this.num,
    required this.mode,
  });

  final List<Map<String, dynamic>> _modeData = [
    {'mode': 'Easy', 'r': 233, 'g': 214, 'b': 197, 'opacity': 1.0},
    {'mode': 'Medium', 'r': 224, 'g': 194, 'b': 182, 'opacity': 1.0},
    {'mode': 'Hard', 'r': 175, 'g': 107, 'b': 62, 'opacity': 0.5},
  ];

  Color getBackgroundColor(String mode) {
    final modeItem = _modeData.firstWhere(
      (item) => item['mode'] == mode,
      orElse: () => {'r': 255, 'g': 255, 'b': 255, 'opacity': 1.0},
    );
    return Color.fromRGBO(
      modeItem['r'],
      modeItem['g'],
      modeItem['b'],
      modeItem['opacity'],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: context.heightPercent(50.0)),
          decoration: BoxDecoration(
            color: getBackgroundColor(mode),
            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: context.heightPercent(30.0),
              bottom: context.heightPercent(24.0),
              left: context.widthPercent(34.0),
              right: context.widthPercent(19.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        label,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Material(
                      color: const Color(0xff78AD7A),
                      shape: const CircleBorder(),
                      child: SizedBox(
                        height: context.heightPercent(50.0),
                        width: context.widthPercent(50.0),
                        child: InkWell(
                          onTap: () {},
                          customBorder: const CircleBorder(),
                          splashColor: Colors.white.withOpacity(0.3),
                          highlightColor: Colors.white.withOpacity(0.2),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/icons/task_playBtn.svg",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.heightPercent(10.0)),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  child: LinearProgressIndicator(
                    backgroundColor: const Color(0xffC86B4E),
                    color: const Color(0xff78AD7A),
                    value: 28 / 40,
                    minHeight: context.heightPercent(12.0),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: context.heightPercent(-32.0),
          left: context.widthPercent(15.0),
          child: Material(
            color: const Color.fromRGBO(133, 160, 155, 0.5),
            shape: const CircleBorder(),
            child: Padding(
              padding: EdgeInsets.only(
                top: context.heightPercent(12.0),
                bottom: context.heightPercent(18.0),
                left: context.widthPercent(18.0),
                right: context.widthPercent(18.0),
              ),
              child: Text(
                "$num.",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TaskCardClassItem {
  final String label;
  final String mode;

  TaskCardClassItem({
    required this.label,
    required this.mode,
  });
}
