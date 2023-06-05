// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers, deprecated_member_use, unnecessary_new

import 'package:cudo_ride/auth/otp_page.dart';
import 'package:cudo_ride/widget/big_text.dart';
import 'package:cudo_ride/widget/static/color.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Color(0xffFF9E00),
          ),
          backgroundColor: AppColors.blueColor,
          title: BigText(
            text: 'Profile Update',
            fontWeight: FontWeight.bold,
            color: AppColors.yellowColor,
          )),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              child: Column(children: [
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 350,
                      child: BigText(
                          text: 'We Will get back to you within 24 hours',
                          color: Color(0xff1A214F),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, bottom: 200),
                    border: OutlineInputBorder(),
                    labelText: 'Message',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => OtpPage()));
                      },
                      // ignore: sort_child_properties_last
                      child: BigText(
                        text: "Submit",
                        color: Color(0xff1A214F),
                        fontWeight: FontWeight.normal,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffFF9E00),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
