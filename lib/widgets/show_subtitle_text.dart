import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShowSubTitleText extends StatelessWidget {
  ShowSubTitleText({
    Key? key,
    required this.subtitle,
  }) : super(key: key);

  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: const Color(0xff042E2B).withOpacity(0.5),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}
