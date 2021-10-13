import 'package:flutter/material.dart';
import 'package:nectar_app/data/constants.dart';


class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: size.width * 0.06,
          color: kTextBlackColor,
          fontFamily: 'Gilroy',
        ),
      ),
    );
  }
}
