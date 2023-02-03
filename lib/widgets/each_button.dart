import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EachButton extends StatelessWidget {
  String icon;
  String title;
  Color? fontColor;

  EachButton({
    Key? key,
    required this.icon,
    required this.title,
    this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          scale: 3,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: fontColor,
              ),
        )
      ],
    );
  }
}

//