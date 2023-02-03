import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShowTitleText extends StatelessWidget {
  ShowTitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: const Color(0xff042E2B),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
    );
  }
}
