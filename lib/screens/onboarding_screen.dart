import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nectar_app/data/constants.dart';
import 'package:nectar_app/screens/sign_in_screen.dart';
import 'package:nectar_app/widgets/buttom_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/background-image.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  'assets/icons/splash_icon.svg',
                  width: size.width * 0.1,
                ),
                const SizedBox(height: 15),
                Text(
                  'Welcome\nto our store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.width * 0.12,
                    color: kTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: TextStyle(
                    fontSize: size.width * 0.04,
                    color: kTextColor.withOpacity(.8),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                ButtonWidget(
                  size: size,
                  title: 'Get Started',
                  backgroundColor: kPrimeryColor,
                ),
                SizedBox(height: size.height * 0.08),
              ],
            )
          ],
        ),
      ),
    );
  }
}
