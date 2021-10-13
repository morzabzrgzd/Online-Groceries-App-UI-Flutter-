import 'package:flutter/material.dart';


class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
      ),
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade300,
    );
  }
}
