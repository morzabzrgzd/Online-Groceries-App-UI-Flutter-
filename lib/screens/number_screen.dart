import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nectar_app/data/constants.dart';
import 'package:nectar_app/screens/sign_in_screen.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:nectar_app/screens/verification_screen.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kBackgroundColor,
          leading: BackButton(
            color: kIconColor,
          ),
        ),
        body: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.05),
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
                        fontSize: size.width*0.04,
                      ),
                      flagWidth: size.width*0.08,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: const Divider(),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(()=> const VerificationScreen(), transition: Transition.fadeIn);
          },
          backgroundColor: kPrimeryColor,
          child: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
