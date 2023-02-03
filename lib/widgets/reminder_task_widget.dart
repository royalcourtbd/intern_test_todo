import 'package:flutter/material.dart';
import 'package:intern_test_todo/widgets/show_subtitle_text.dart';
import 'package:intern_test_todo/widgets/show_title_text.dart';

import '../utills/config.dart';

class ReminderTaskWidget extends StatelessWidget {
  const ReminderTaskWidget({
    Key? key,
    required this.reminderTask,
  }) : super(key: key);

  final List reminderTask;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return SizedBox(
      height: Config.screenHeight! * .16,
      width: 400,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: reminderTask.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: .5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              width: Config.screenWidth! * .4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    reminderTask[index].todo,
                    scale: 2.5,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ShowTitleText(
                    title: reminderTask[index].title,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ShowSubTitleText(
                    subtitle: 'Save Date: ${reminderTask[index].date}',
                  ),
                ],
              ),
              // height: Config.screenHeight! * .2,
            ),
          );
        },
      ),
    );
  }
}
