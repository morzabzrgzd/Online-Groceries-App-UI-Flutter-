import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nectar_app/data/constants.dart';
import 'package:nectar_app/screens/sign_in_screen.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:nectar_app/screens/verification_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

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
              TitleText(size: size, text: 'Enter your 4-digit code'),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.06,
                ),
                child: Text(
                  'Code',
                  style: TextStyle(
                    color: const Color(0xff7C7C7C),
                    fontSize: size.width * 0.04,
                  ),
                ),
              ),
               Container(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width*0.06
                ),
                child: const TextField(
                        cursorColor: Colors.grey,
                        cursorHeight: 23,
                        cursorWidth: 1,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '----',
                  ),
                ),
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
          },
          backgroundColor: kPrimeryColor,
          child: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
