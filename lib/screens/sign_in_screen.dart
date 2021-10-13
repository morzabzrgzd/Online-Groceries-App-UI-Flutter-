import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nectar_app/data/constants.dart';
import 'package:nectar_app/screens/number_screen.dart';
import 'package:nectar_app/widgets/buttom_widget.dart';
import 'package:nectar_app/widgets/text_title_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          children: [
            Container(
              height: size.height * 0.38,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/Mask Group.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.06),
                    TitleText(
                      size: size,
                      text: 'Get your groceries\nwith nectar',
                    ),
                    SizedBox(height: size.height * 0.045),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            () => const NumberScreen(),
                            transition: Transition.fadeIn,
                          );
                        },
                        child: Text(
                          'Enter Mobile Number',
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                            color: kTextBlackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.06,
                      ),
                      child: const Divider(),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Center(
                      child: Text(
                        'Or connect with social media',
                        style: TextStyle(
                          fontSize: size.width * 0.038,
                          color: kTextBlackColor,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.045),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        ButtonWidget(
                          size: size,
                          backgroundColor: const Color(0xff5383EC),
                          title: 'Continue with Google',
                        ),
                        Positioned(
                          left: size.width * 0.1,
                          // top: 12,
                          child: SvgPicture.asset(
                            'assets/icons/google.svg',
                            width: size.width * 0.06,
                            fit: BoxFit.scaleDown,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        ButtonWidget(
                          size: size,
                          backgroundColor: const Color(0xff4A66AC),
                          title: 'Continue with Facebook',
                        ),
                        Positioned(
                          left: size.width * 0.1,
                          // top: 12,
                          child: SvgPicture.asset(
                            'assets/icons/facebook.svg',
                            width: size.width * 0.06,
                            fit: BoxFit.scaleDown,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
