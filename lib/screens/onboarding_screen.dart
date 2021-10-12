import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/data/constants.dart';

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
                 SizedBox(height: size.height*0.04),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.08,
                  ),
                  height: size.height * 0.065,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      elevation: 0,
                      primary: kPrimeryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: size.height*0.08),
              ],
            )
          ],
        ),
      ),
    );
  }
}
