import 'package:flutter/material.dart';
import 'package:intern_test_todo/widgets/each_button.dart';

import '../utills/config.dart';

class BottomNavigationBarWidgets extends StatelessWidget {
  const BottomNavigationBarWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(
            18,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(5, 2),
            blurRadius: 3,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          EachButton(
            icon: 'assets/images/Home.png',
            title: 'Home',
            fontColor: const Color(
              0xff042E2B,
            ),
          ),
          EachButton(
            icon: 'assets/images/Search.png',
            title: 'Search',
            fontColor: const Color(
              0xffB4C1C0,
            ),
          ),
          EachButton(
            icon: 'assets/images/Video.png',
            title: 'Record',
            fontColor: const Color(
              0xffB4C1C0,
            ),
          ),
          EachButton(
            icon: 'assets/images/Bookmark.png',
            title: 'Saved',
            fontColor: const Color(
              0xffB4C1C0,
            ),
          ),
          EachButton(
            icon: 'assets/images/Setting.png',
            title: 'Settings',
            fontColor: const Color(
              0xffB4C1C0,
            ),
          ),
        ],
      ),
    );
  }
}
