import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nectar_app/data/constants.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:nectar_app/screens/verification_screen.dart';
import 'package:nectar_app/widgets/divider_widget.dart';
import 'package:nectar_app/widgets/text_title_widget.dart';
import 'package:nectar_app/widgets/top_background.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            
            const TopBackground(),
            Positioned(
              left: 8,
              top: 5,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.2),
                  TitleText(size: size, text: 'Enter your mobile number'),
                  SizedBox(height: size.height * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.06,
                    ),
                    child: Text(
                      'Mobile Number',
                      style: TextStyle(
                        color: const Color(0xff7C7C7C),
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        alignment: Alignment.center,
                        child: CountryCodePicker(
                          dialogTextStyle: TextStyle(
                            color: kTextBlackColor,
                            fontSize: size.width * 0.04,
                          ),
                          flagWidth: size.width * 0.08,
                          barrierColor: Colors.black.withOpacity(.5),
                          dialogSize: Size.infinite,
                          initialSelection: 'in',
                          searchDecoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Serach',
                            prefixIcon: Icon(
                              FeatherIcons.search,
                              color: Colors.grey,
                            ),
                          ),
                          boxDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      const Flexible(
                        flex: 2,
                        child: SizedBox(
                          child: TextField(
                            cursorColor: Colors.grey,
                            cursorHeight: 23,
                            cursorWidth: 1,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Number',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  DividerWidget(size: size),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => const VerificationScreen(),
                transition: Transition.fadeIn);
          },
          backgroundColor: kPrimeryColor,
          child: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
