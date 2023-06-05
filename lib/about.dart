// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:cudo_ride/widget/big_text.dart';
import 'package:cudo_ride/widget/small_text.dart';
import 'package:cudo_ride/widget/static/color.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Color(0xffFF9E00),
          ),
          backgroundColor: AppColors.blueColor,
          title: BigText(
            text: 'About Us',
            fontWeight: FontWeight.bold,
            color: AppColors.yellowColor,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 70,
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: Color(0xffFF9E00),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: BigText(
                      color: Color(0xff1A214F),
                      text: 'Grow Your Business With Cudo Services',
                      fontWeight: FontWeight.bold),
                ),
              ),

              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: Color(0xffFF9E00),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: SmallText(
                      color: Color(0xff1A214F),
                      text:
                          'Getting qualified professionals to do your jobs no longer requires you to break a neck. Cudo service is a work marketplace. We connect people with different skills to clients/employers who is in need of their services.We help employers grow their business by connecting them to best skills and qualified professionals.',
                      fontWeight: FontWeight.bold),
                ),
              ),

              Divider(
                  height: 10,
                  endIndent: 100,
                  indent: 100,
                  thickness: 2,
                  color: Color(0xffFF9E00)),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: BigText(
                      color: Color(0xff1A214F),
                      text: 'Our Story',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: Color(0xffFF9E00),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: SmallText(
                      color: Color(0xff1A214F),
                      text:
                          'OUR STORY We created CUDO because we believe connecting with nearby service providers should be as easy as putting A PHONE CALL across. The platform helps customers book reliable and quality services - delivered by trained professionals conveniently at home.',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                  height: 10,
                  endIndent: 100,
                  indent: 100,
                  thickness: 2,
                  color: Color(0xffFF9E00)),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: BigText(
                      color: Color(0xff1A214F),
                      text: 'How do we achieve this?',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: Color(0xffFF9E00),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: SmallText(
                      color: Color(0xff1A214F),
                      text:
                          'Once on our platform, our match-making algorithm identifies professionals who are closest to the users requirements and available at the requested time and date. And once booked, we ensure quality delivery, from the assignment to the job completion.',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
