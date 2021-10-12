import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nectar_app/controller/splash_controller.dart';
import 'package:nectar_app/data/constants.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);

  
    SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSplashBackgroundColor,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/splash_icon.svg',
                width: size.width * 0.12,
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'nectar',
                    style: TextStyle(
                      fontSize: size.width * 0.13,
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'online groceriet',
                    style: TextStyle(
                      fontSize: size.width * 0.032,
                      color: kTextColor,
                      letterSpacing: 3.5,
                      wordSpacing: 4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
