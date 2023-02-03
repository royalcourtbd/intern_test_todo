import 'package:flutter/material.dart';
import 'package:intern_test_todo/utills/config.dart';

import '../model/task_model.dart';
import '../widgets/all_task_view_widget.dart';
import '../widgets/bottom_navigation_bar_widget.dart';
import '../widgets/reminder_task_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List reminderTask = <TaskModel>[
    TaskModel(
      todo: 'assets/images/to_do_list_3.png',
      title: 'Online Class Routine',
      date: '10/12/2022',
    ),
    TaskModel(
      todo: 'assets/images/to_do_list_1.png',
      title: 'Office Work List',
      date: '15/12/2022',
    ),
    TaskModel(
      todo: 'assets/images/to_do_list_2.png',
      title: 'Day Task',
      date: '10/12/2022',
    ),
  ];
  List allTask = <TaskModel>[
    TaskModel(
      todo: 'assets/images/to_do_list_3.png',
      title: 'Online Class Routine',
      date: '10/12/2022',
    ),
    TaskModel(
      todo: 'assets/images/to_do_list_3.png',
      title: 'Online Class Routine',
      date: '10/12/2022',
    ),
    TaskModel(
      todo: 'assets/images/to_do_list_3.png',
      title: 'Online Class Routine',
      date: '10/12/2022',
    ),
    TaskModel(
      todo: 'assets/images/to_do_list_3.png',
      title: 'Online Class Routine',
      date: '10/12/2022',
    ),
    TaskModel(
      todo: 'assets/images/to_do_list_3.png',
      title: 'Online Class Routine',
      date: '10/12/2022',
    ),
    TaskModel(
      todo: 'assets/images/to_do_list_3.png',
      title: 'Online Class Routine',
      date: '10/12/2022',
    ),
    TaskModel(
      todo: 'assets/images/to_do_list_3.png',
      title: 'Online Class Routine',
      date: '10/12/2022',
    ),
    TaskModel(
      todo: 'assets/images/to_do_list_3.png',
      title: 'Online Class Routine',
      date: '10/12/2022',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: Config.screenHeight! * .6,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(
                        'assets/images/bg.png',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Config.screenHeight! * .06,
                    horizontal: Config.screenWidth! * .04,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Habib 👋',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Let’s explore your notes',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.white70,
                                    ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/profile.png',
                        scale: 2.5,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  //top: 300,
                  top: Config.screenHeight! * .19,
                  right: Config.screenWidth! * .04,
                  left: Config.screenWidth! * .04,
                  child: Image.asset(
                    'assets/images/banner_bg.png',
                  ),
                ),
                Positioned(
                  top: Config.screenHeight! * .21,
                  left: Config.screenWidth! * .07,
                  right: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to TickTick Task',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Your one-stop app for task management. Simplify,\ntrack, and accomplish tasks with ease.',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/watch_video.png',
                            scale: 3,
                          ),
                          Image.asset(
                            'assets/images/todo_banner.png',
                            scale: 4.3,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: Config.screenHeight! * .41,
                  left: Config.screenWidth! * .04,
                  right: Config.screenWidth! * .04,
                  // left: 15,
                  //bottom: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reminder Task',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        'See All',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ),
                //Reminder Task Section Card Design
                Positioned(
                  top: Config.screenHeight! * .44,
                  left: Config.screenWidth! * .02,
                  child: ReminderTaskWidget(reminderTask: reminderTask),
                ),
              ],
            ),
            SizedBox(
              height: Config.screenHeight! * .032,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Config.screenWidth! * .04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Tasks',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color(0xff042E2B),
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color(0xff042E2B),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ),
            //All Task Section Widget View
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Config.screenWidth! * .02,
                vertical: Config.screenHeight! * .01,
              ),
              child: AllTaskViewWidget(allTask: allTask),
            ),
          ],
        ),
      ),
      //bottomNavigationBar design
      bottomNavigationBar: const BottomNavigationBarWidgets(),
    );
  }
}
