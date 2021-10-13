import 'package:flutter/material.dart';

class TopBackground extends StatelessWidget {
  const TopBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Image.asset('assets/images/back-color.png'),
    );
  }
}