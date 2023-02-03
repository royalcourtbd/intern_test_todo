import 'package:flutter/material.dart';
import 'package:intern_test_todo/utills/config.dart';
import 'package:intern_test_todo/widgets/show_subtitle_text.dart';
import 'package:intern_test_todo/widgets/show_title_text.dart';

class AllTaskViewWidget extends StatelessWidget {
  const AllTaskViewWidget({
    Key? key,
    required this.allTask,
  }) : super(key: key);

  final List allTask;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: allTask.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: .5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 15,
                ),
                leading: Image.asset(
                  allTask[index].todo,
                  scale: 2.5,
                ),
                title: ShowTitleText(
                  title: allTask[index].title,
                ),
                subtitle: ShowSubTitleText(
                  subtitle: 'Save Date: ${allTask[index].date}',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
