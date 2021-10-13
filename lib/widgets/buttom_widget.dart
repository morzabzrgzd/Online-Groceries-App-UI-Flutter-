import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nectar_app/data/constants.dart';
import 'package:nectar_app/screens/sign_in_screen.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.size,
    required this.backgroundColor,
    required this.title,
  }) : super(key: key);

  final Size size;
  final Color backgroundColor;
  final String title;

  get kPrimeryColor => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
      ),
      height: size.height * 0.08,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          primary: backgroundColor,
        ),
        onPressed: () {
          Get.to(
            () => const SignInScreen(),
            transition: Transition.fadeIn,
          );
        },
        child: Text(
          title,
          style: TextStyle(
            color: kTextColor,
            fontSize: size.width * 0.04,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
