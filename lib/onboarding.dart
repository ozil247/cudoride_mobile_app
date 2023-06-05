// ignore_for_file: prefer_const_constructors
import 'package:cudo_ride/auth/otp_page.dart';
import 'package:cudo_ride/widget/big_text.dart';
import 'package:cudo_ride/widget/static/color.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A214F),
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          height: 300,
        ),
        Container(
          padding: EdgeInsets.only(left: 50),
          height: 50,
          width: 500,
          child: BigText(
            text: 'Enter Your Number',
            fontWeight: FontWeight.bold,
            color: Color(0xffFF9E00),
            size: 32,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
            child: Container(
          width: 350,
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
              color: Colors.white,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                  color: Color(0xffFF9E00),
                )
              ],
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(0xffFF9E00).withOpacity(0.13),
              )),
          child: Padding(
              padding: EdgeInsets.all(8),
              child: IntlPhoneField(
                decoration: const InputDecoration(labelText: ''),
              )),
        )),
        Container(
          margin: EdgeInsets.only(top: 20, left: 10, right: 20),
          child: SizedBox(
            width: 350,
            height: 50,
            // ignore: sort_child_properties_last
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    //please change Dashboard to Register
                    builder: (context) => OtpPage(),
                  ),
                );
              },
              // ignore: sort_child_properties_last
              child: BigText(
                text: "Sign In",
                fontWeight: FontWeight.bold,
                size: 14,
                color: AppColors.blueColor,
              ),

              style: ElevatedButton.styleFrom(
                primary:
                    AppColors.yellowColor, //change background color of button
                // onPrimary: Colors.yellow, //change text color of button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
